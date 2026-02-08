return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "nvim-mini/mini.icons" },
  opts = {},
  keys = {
    {
      '<leader>fb',
      "<CMD>FzfLua<CR>",
      desc = 'Fzf builtin',
    },
    {
      '<leader><leader>',
      function()
        require('fzf-lua').buffers()
      end,
      desc = 'Find existing buffers',
    },
    {
      '<leader>ff',
      function()
        require('fzf-lua').files()
      end,
      desc = 'Find files',
    },
    {
      '<leader>fh',
      function()
        require('fzf-lua').history()
      end,
      desc = 'List recent buffers/files',
    },
    {
      '<leader>fq',
      function()
        require('fzf-lua').quickfix()
      end,
      desc = 'Show quickfix list',
    },
    {
      '<leader>fg',
      function()
        require('fzf-lua').grep()
      end,
      desc = 'Find grep',
    },
    {
      '<leader>/',
      function()
        require('fzf-lua').lgrep_curbuf()
      end,
      desc = 'Grep in current buffer',
    },
    {
      '<leader>fw',
      function()
        require('fzf-lua').grep_cword()
      end,
      desc = 'Find current word',
    },
    {
      '<leader>fW',
      function()
        require('fzf-lua').grep_cWORD()
      end,
      desc = 'Find current WORD',
    },
    {
      '<leader>fd',
      function()
        require('fzf-lua').lsp_definitions()
      end,
      desc = 'Find definition',
    },
    {
      '<leader>ft',
      function()
        require('fzf-lua').lsp_typedefs()
      end,
      desc = 'Find type definitions',
    },
    {
      '<leader>fr',
      function()
        require('fzf-lua').resume()
      end,
      desc = 'Resume last search query',
    },
    {
      '<leader>fm',
      function()
        require('fzf-lua').marks()
      end,
      desc = 'List bookmarks',
    },
    {
      '<leader>lb',
      function()
        require('fzf-lua').dap_breakpoints()
      end,
      desc = 'List breakpoints',
    }
  }
}
