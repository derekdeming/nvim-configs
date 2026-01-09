local CODEX_CMD = {
  "codex",
  "--model",
  "gpt-5.2-codex",
  "--config",
  "model_reasoning_effort=\"xhigh\"",
  "--dangerously-bypass-approvals-and-sandbox",
  "--search",
}

local CODEX_STATE = {
  width = 0.4.5,
  cwd = nil,
  host_buf = nil,
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

local function is_real_buffer(buf)
  if not vim.api.nvim_buf_is_valid(buf) then
    return false
  end
  if vim.bo[buf].buftype ~= "" then
    return false
  end
  return true
end

local function remember_host_buffer()
  local cur = vim.api.nvim_get_current_buf()
  local cur_ft = vim.bo[cur].filetype
  if cur_ft ~= "snacks_dashboard" and cur_ft ~= "snacks_terminal" and is_real_buffer(cur) then
    CODEX_STATE.host_buf = cur
  end
end

local function ensure_work_buffer()
  local cur = vim.api.nvim_get_current_buf()
  local cur_ft = vim.bo[cur].filetype

  -- If we're already in a real file buffer, remember it as host.
  if cur_ft ~= "snacks_dashboard" and cur_ft ~= "snacks_terminal" and is_real_buffer(cur) then
    CODEX_STATE.host_buf = cur
    return
  end

  -- If we're on the dashboard, prefer an existing host buffer if we have one.
  if cur_ft == "snacks_dashboard" and CODEX_STATE.host_buf and is_real_buffer(CODEX_STATE.host_buf) then
    vim.api.nvim_set_current_buf(CODEX_STATE.host_buf)
    return
  end
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

  -- Workaround: Codex TUI in the embedded terminal needs Enter twice.
  vim.keymap.set("t", "<CR>", "<CR><CR>", {
    buffer = term.buf,
    silent = true,
    desc = "Codex (submit)",
  })
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
  if vim.fn.executable("codex") ~= 1 then
    vim.notify("codex CLI not found. Install it and try again.", vim.log.levels.ERROR)
    return
  end
  CODEX_STATE.cwd = dir
  ensure_work_buffer()
  local term = get_codex_term(true)
  if term then
    term:show()
  end
end

local function toggle_codex()
  local term, created = get_codex_term(true)
  if not term then
    return
  end
  if created then
    term:show()
    return
  end
  term:toggle()
end

local function toggle_codex_focus()
  local term = get_codex_term(false)
  if term and term:win_valid() then
    if vim.api.nvim_get_current_win() == term.win then
      ensure_work_buffer()
      local host_buf = CODEX_STATE.host_buf
      if host_buf and vim.api.nvim_buf_is_valid(host_buf) then
        local wins = vim.fn.win_findbuf(host_buf)
        if #wins > 0 then
          vim.api.nvim_set_current_win(wins[1])
          return
        end
      end
      vim.cmd("wincmd p")
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
    term:hide()
  end
end

local function restart_codex()
  local term = get_codex_term(false)
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
        "<leader>ac",
        function()
          toggle_codex()
        end,
        desc = "Codex (toggle)",
      },
      {
        "<leader>aC",
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
        "<leader>aw",
        function()
          toggle_codex_focus()
        end,
        desc = "Codex (focus toggle)",
        mode = { "n", "t" },
      },
      {
        "<leader>aR",
        function()
          restart_codex()
        end,
        desc = "Codex (restart)",
      },
      {
        "<leader>aQ",
        function()
          close_codex()
        end,
        desc = "Codex (hide)",
      },
      {
        "<leader>a-",
        function()
          resize_codex((CODEX_STATE.width or 0.4) - 0.05)
        end,
        desc = "Codex (narrow)",
      },
      {
        "<leader>a+",
        function()
          resize_codex((CODEX_STATE.width or 0.4) + 0.05)
        end,
        desc = "Codex (widen)",
      },
      {
        "<leader>aU",
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
