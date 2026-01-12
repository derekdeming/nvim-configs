local function resolve_codex_bin()
  local candidates = {
    vim.fn.expand("~/.npm-global/bin/codex"),
    "/opt/homebrew/bin/codex",
    "/usr/local/bin/codex",
    vim.fn.exepath("codex"),
    "codex",
  }
  for _, path in ipairs(candidates) do
    if path and path ~= "" and vim.fn.executable(path) == 1 then
      return path
    end
  end
  return "codex"
end

local CODEX_CMD = {
  resolve_codex_bin(),
  "--model",
  "gpt-5.2-codex",
  "--config",
  "model_reasoning_effort=\"xhigh\"",
  "--dangerously-bypass-approvals-and-sandbox",
  "--search",
}

local CODEX_STATE = {
  width = 0.45,
  cwd = nil,
  host_buf = nil,
  host_win = nil,
}

local CODEX_WIN = {
  position = "right",
  wo = {
    winbar = "",
    number = false,
    relativenumber = false,
    signcolumn = "no",
  },
}

local function is_host_buffer(buf)
  if not buf or not vim.api.nvim_buf_is_valid(buf) then
    return false
  end
  if vim.bo[buf].buftype ~= "" then
    return false
  end
  local ft = vim.bo[buf].filetype
  if ft == "snacks_dashboard" or ft == "snacks_terminal" then
    return false
  end
  return true
end

local function remember_host_buffer()
  local win = vim.api.nvim_get_current_win()
  local cur = vim.api.nvim_win_get_buf(win)
  if is_host_buffer(cur) then
    CODEX_STATE.host_buf = cur
    CODEX_STATE.host_win = win
  end
end

local function focus_host_window()
  if CODEX_STATE.host_win and vim.api.nvim_win_is_valid(CODEX_STATE.host_win) then
    vim.api.nvim_set_current_win(CODEX_STATE.host_win)
    return true
  end

  if CODEX_STATE.host_buf and is_host_buffer(CODEX_STATE.host_buf) then
    local wins = vim.fn.win_findbuf(CODEX_STATE.host_buf)
    if #wins > 0 then
      vim.api.nvim_set_current_win(wins[1])
      return true
    end
  end

  return false
end

local function ensure_work_buffer()
  local win = vim.api.nvim_get_current_win()
  local cur = vim.api.nvim_win_get_buf(win)

  -- If we're already in a real file buffer, remember it as host.
  if is_host_buffer(cur) then
    CODEX_STATE.host_buf = cur
    CODEX_STATE.host_win = win
    return true
  end

  -- Otherwise, try to fall back to the last known host.
  return focus_host_window()
end

local function codex_win_opts()
  return vim.tbl_deep_extend("force", {}, CODEX_WIN, { width = CODEX_STATE.width })
end

local function setup_codex_term(term)
  if not term or not term.buf or not vim.api.nvim_buf_is_valid(term.buf) then
    return
  end
  if vim.b[term.buf].codex_enter_fix then
    return
  end
  vim.b[term.buf].codex_enter_fix = true

  local function tmap(lhs, rhs, desc)
    vim.keymap.set("t", lhs, rhs, {
      buffer = term.buf,
      silent = true,
      desc = desc,
    })
  end

  -- Window navigation from inside the Codex terminal without stealing Backspace.
  tmap("<M-h>", "<C-\\><C-n><C-w>h", "Window left")
  tmap("<M-j>", "<C-\\><C-n><C-w>j", "Window down")
  tmap("<M-k>", "<C-\\><C-n><C-w>k", "Window up")
  tmap("<M-l>", "<C-\\><C-n><C-w>l", "Window right")
  tmap("<M-Left>", "<C-\\><C-n><C-w>h", "Window left")
  tmap("<M-Down>", "<C-\\><C-n><C-w>j", "Window down")
  tmap("<M-Up>", "<C-\\><C-n><C-w>k", "Window up")
  tmap("<M-Right>", "<C-\\><C-n><C-w>l", "Window right")

  tmap("<M-w>", "<C-\\><C-n><cmd>CodexFocus<CR>", "Codex focus toggle")
  tmap("<M-q>", "<C-\\><C-n><cmd>CodexHide<CR>", "Codex hide")
  tmap("<M-r>", "<C-\\><C-n><cmd>CodexRestart<CR>", "Codex restart")
end

local function get_codex_term(create)
  local ok, snacks = pcall(require, "snacks")
  if not ok then vim.notify("snacks.nvim is not available.", vim.log.levels.ERROR)
    return nil
  end

  local cwd = CODEX_STATE.cwd or vim.fn.getcwd()
  local term, created = snacks.terminal.get(CODEX_CMD, { cwd = cwd, win = codex_win_opts(), create = create })
  setup_codex_term(term)
  return term, created
end

local function resize_codex(width)
  local w = tonumber(width)
  if not w then
    return
  end
  if w > 1 then
    w = math.min(w, vim.o.columns - 10)
  else
    w = math.min(math.max(w, 0.2), 0.8)
  end
  CODEX_STATE.width = w

  local term = get_codex_term(false)
  if term and term:win_valid() then
    local cols = w > 1 and math.floor(w) or math.floor(vim.o.columns * w)
    vim.api.nvim_win_call(term.win, function()
      vim.cmd("vertical resize " .. cols)
    end)
  end
end

local function open_codex(dir)
  if vim.fn.executable(CODEX_CMD[1]) ~= 1 then
    vim.notify("codex CLI not found. Install it and try again.", vim.log.levels.ERROR)
    return
  end
  if dir and dir ~= "" then
    CODEX_STATE.cwd = dir
  end
  remember_host_buffer()
  ensure_work_buffer()
  local term = get_codex_term(true)
  if term then
    term:show()
  end
end

local function toggle_codex()
  local term = get_codex_term(true)
  if not term then
    return
  end

  if term:win_valid() then
    local was_current = vim.api.nvim_get_current_win() == term.win
    term:hide()
    if was_current then
      if not focus_host_window() then
        vim.cmd("wincmd p")
      end
    end
    return
  end

  remember_host_buffer()
  term:show()
end

local function toggle_codex_focus()
  local term = get_codex_term(false)
  if term and term:win_valid() then
    if vim.api.nvim_get_current_win() == term.win then
      if not focus_host_window() then
        vim.cmd("wincmd p")
      end
      return
    end
    remember_host_buffer()
    vim.api.nvim_set_current_win(term.win)
    return
  end

  -- If Codex isn't visible, show it and focus the window.
  open_codex(CODEX_STATE.cwd or vim.fn.getcwd())
  term = get_codex_term(false)
  if term and term:win_valid() then
    vim.api.nvim_set_current_win(term.win)
  end
end

local function close_codex()
  local term = get_codex_term(false)
  if term then
    local was_current = term:win_valid() and vim.api.nvim_get_current_win() == term.win
    term:hide()
    if was_current then
      if not focus_host_window() then
        vim.cmd("wincmd p")
      end
    end
  end
end

local function restart_codex()
  local term = get_codex_term(false)
  local was_current = term and term:win_valid() and vim.api.nvim_get_current_win() == term.win
  if term then
    -- If this is the only window, create a host split first to avoid extra vsplits.
    if term:win_valid() and #vim.api.nvim_tabpage_list_wins(0) == 1 then
      vim.cmd("vsplit")
      ensure_work_buffer()
      if term:win_valid() then
        vim.api.nvim_set_current_win(term.win)
      end
    end
    -- stop the running job if we can
    if term.buf and vim.api.nvim_buf_is_valid(term.buf) then
      local jid = vim.b[term.buf].terminal_job_id
      if jid and jid > 0 then
        pcall(vim.fn.jobstop, jid)
      end
    end
    term:close()
  end
  vim.schedule(function()
    open_codex(CODEX_STATE.cwd or vim.fn.getcwd())
    if not was_current then
      focus_host_window()
    end
  end)
end

local function update_codex()
  if vim.fn.executable("brew") ~= 1 then
    vim.notify("Homebrew not found. Run `brew upgrade codex` manually.", vim.log.levels.WARN)
    return
  end

  local ok, snacks = pcall(require, "snacks")
  if not ok then
    vim.notify("snacks.nvim is not available.", vim.log.levels.ERROR)
    return
  end

  snacks.terminal({ "brew", "upgrade", "codex" })
end

return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>cc",
        function()
          toggle_codex()
        end,
        desc = "Codex (toggle)",
      },
      {
        "<leader>cC",
        function()
          vim.ui.input(
            { prompt = "Codex cwd: ", default = vim.fn.getcwd(), completion = "dir" },
            function(dir)
              if dir and dir ~= "" then
                open_codex(vim.fn.expand(dir))
              end
            end
          )
        end,
        desc = "Codex (open in dir)",
      },
      {
        "<leader>cW",
        function()
          toggle_codex_focus()
        end,
        desc = "Codex (focus toggle)",
      },
      {
        "<leader>cR",
        function()
          restart_codex()
        end,
        desc = "Codex (restart)",
      },
      {
        "<leader>cQ",
        function()
          close_codex()
        end,
        desc = "Codex (hide)",
      },
      {
        "<leader>c-",
        function()
          resize_codex((CODEX_STATE.width or 0.4) - 0.05)
        end,
        desc = "Codex (narrow)",
      },
      {
        "<leader>c+",
        function()
          resize_codex((CODEX_STATE.width or 0.4) + 0.05)
        end,
        desc = "Codex (widen)",
      },
      {
        "<leader>cU",
        function()
          update_codex()
        end,
        desc = "Codex CLI update (brew)",
      },
    },
    init = function()
      vim.api.nvim_create_user_command("Codex", function(opts)
        local dir = opts.args ~= "" and vim.fn.expand(opts.args) or vim.fn.getcwd()
        open_codex(dir)
      end, { nargs = "?", complete = "dir" })
      vim.api.nvim_create_user_command("CodexToggle", function()
        toggle_codex()
      end, {})
      vim.api.nvim_create_user_command("CodexFocus", function()
        toggle_codex_focus()
      end, {})
      vim.api.nvim_create_user_command("CodexHide", function()
        close_codex()
      end, {})
      vim.api.nvim_create_user_command("CodexRestart", function()
        restart_codex()
      end, {})
      vim.api.nvim_create_user_command("CodexWidth", function(opts)
        resize_codex(opts.args)
      end, { nargs = 1 })
      vim.api.nvim_create_user_command("CodexUpdate", function()
        update_codex()
      end, {})
    end,
  },
}
