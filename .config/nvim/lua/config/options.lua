vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.tabstop = 4 -- How many spaces are shown per Tab
vim.opt.shiftwidth = 4 -- Amount to indent with << and >>

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line

-- Always show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Show line under cursor
vim.opt.cursorline = true

-- Store undos between sessions
vim.opt.undofile = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- Disable commandline until it is needed. This gives us a cleaner look and an extra line ;)
vim.opt.cmdheight = 1

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = 'Highlight yank',
})

-- Check if running on Windows
is_windows = vim.loop.os_uname().sysname == "Windows_NT"

if is_windows then
    vim.o.shell = "powershell.exe"
end
