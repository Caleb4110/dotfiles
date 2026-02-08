vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent Directory in Oil' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic quickfix list' })

vim.keymap.set('n', 'gf', function()
  vim.diagnostic.open_float()
end, { desc = 'Open diagnostics in float' })

-- Window management
vim.keymap.set('n', '<leader>_', '<cmd>split<CR>', { desc = 'Split window horizontal' })
vim.keymap.set('n', '<leader>|', '<cmd>vsplit<CR>', { desc = 'Split window vertical' })

vim.keymap.set('n', '<leader>._', '<cmd>split | terminal<CR>', { desc = 'Split terminal horizontal' })
vim.keymap.set('n', '<leader>.|', '<cmd>vsplit | terminal<CR>', { desc = 'Split terminal vertical' })

-- Window resize management
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Resize UP' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Resize DOWN' })
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', { desc = 'Resize LEFT' })
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', { desc = 'Resize RIGHT' })

vim.keymap.set('t', '<C-Up>', '<cmd>resize +2<CR>', { desc = 'Resize UP' })
vim.keymap.set('t', '<C-Down>', '<cmd>resize -2<CR>', { desc = 'Resize DOWN' })
vim.keymap.set('t', '<C-Left>', '<cmd>vertical resize +2<CR>', { desc = 'Resize LEFT' })
vim.keymap.set('t', '<C-Right>', '<cmd>vertical resize -2<CR>', { desc = 'Resize RIGHT' })

-- Edit config quickly
vim.keymap.set('n', '<leader>ec', '<cmd>edit $MYVIMRC<CR>', { desc = 'Edit Neovim config' })

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in all modes
-- local modes = { 'n', 'i', 'v', 'c', 't', 'o', 's', 'x' } -- All possible modes
local modes = { 'n', 'i', 'v', 'o', 't', 's', 'x' } -- All possible modes
local arrows = { '<Up>', '<Down>', '<Left>', '<Right>' }

for _, mode in ipairs(modes) do
  for _, key in ipairs(arrows) do
    vim.keymap.set(mode, key, '<Nop>', { noremap = true, silent = true })
  end
end

local enabledModes = { 'i', 'c', 'o', 't', 's', 'x' }
-- Map Alt + hjkl in Insert mode
for _, mode in ipairs(enabledModes) do
  vim.keymap.set(mode, '<A-h>', '<Left>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<A-j>', '<Down>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<A-k>', '<Up>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<A-l>', '<Right>', { noremap = true, silent = true })
end

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code actions",
})
