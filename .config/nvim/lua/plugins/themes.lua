return {
  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {
        transparent = true,
      }
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
          transparent = true,
          colors = {
            palette = {},
            theme = { wave = {}, lotus = {}, dragon = {}, all = {
                ui = {
                  bg_gutter = "none"
                }
              }
            }
          }
      }
      vim.cmd([[colorscheme kanagawa]])
    end
  }
}
