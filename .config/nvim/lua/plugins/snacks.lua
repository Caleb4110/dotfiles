return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("snacks").setup({
      input = {
        enabled = true,
        -- THIS is the important part
        override = true,
      },
      picker = {
        enabled = true,
        override = true,
      },
    })
  end,
}

