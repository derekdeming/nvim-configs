-- vim.g.loaded_netrw = 0
-- vim.g.loaded_netrwPlugin = 0
-- vim.cmd("let g:netrw_liststyle = 3")
-- Disable netrw banner

vim.cmd("let g:netrw_banner = 0")

vim.opt.guicursor = ""

-- line numbers 
vim.opt.nu = true
vim.opt.relativenumber = true

--indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- always hard wrap at 80 chars in every file 
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    callback = function()
        vim.opt_local.textwidth = 80
        vim.opt_local.formatoptions:append("t") -- wrap text
    end,
})

-- backup and undo 
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .."/.vim/undodir"
vim.opt.undofile = true

--search 
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ui 
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.backspace = {"start", "eol", "indent" }

-- window splits 
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch = true

-- misc
vim.opt.mouse = "a"
vim.g.editorconfig = true
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
