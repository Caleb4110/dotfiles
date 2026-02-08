return {
  "mfussenegger/nvim-dap-python",
  config = function()
    require("dap-python").setup("/opt/local/bin/python", {stopOnEntry = true})  -- XXX: Replace this with your preferred Python, if wanted
    -- An example configuration to launch any Python file, via Houdini
    table.insert(
      require("dap").configurations.python,
      {
        type = "python",
        request = "launch",
        name = "Launch Current File",
        program = "${file}",
        pythonPath = "/opt/local/bin/python",
        console = "integratedTerminal",
        stopOnEntry = true,
      }
    )
  end,
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-treesitter/nvim-treesitter",
  },
}
