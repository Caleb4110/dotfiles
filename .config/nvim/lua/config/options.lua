vim.g.have_nerd_font = true

-- Convert tabs to spaces
vim.opt.expandtab = true

-- How many spaces are shown per Tab
vim.opt.tabstop = 4

-- Amount to indent with << and >>
vim.opt.shiftwidth = 4

vim.opt.smarttab = true
vim.opt.smartindent = true

-- Keep identation from previous line
vim.opt.autoindent = true

-- Always show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

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

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

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
vim.opt.scrolloff = 10

-- Instead of exit error, ask if want to save
vim.opt.confirm = true

-- Disable commandline until it is needed. This gives us a cleaner look and an extra line ;)
vim.opt.cmdheight = 1



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

-- LSP diagnostic icons
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
    },
  },
  underline = true,
})

for _, type in ipairs({ "Error", "Warn", "Hint", "Info" }) do
  vim.api.nvim_set_hl(0, "DiagnosticUnderline" .. type, {
    underline = true,
  })
end




