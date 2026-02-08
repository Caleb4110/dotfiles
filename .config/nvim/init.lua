require("config.lazy")
require("config.keymaps")
require("config.options")

local lsp_configs = {}

-- Get all the lsp configs from the lsp/ folder
for _, f in pairs(vim.api.nvim_get_runtime_file('lsp/*.lua', true)) do
  local server_name = vim.fn.fnamemodify(f, ':t:r')
  table.insert(lsp_configs, server_name)
end

-- Enable all lsp
vim.lsp.enable(lsp_configs)
