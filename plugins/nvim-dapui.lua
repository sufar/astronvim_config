return {
  "rcarriga/nvim-dap-ui",
  opts = function(_, config)
    config.layouts = {
      {
        elements = {
          { id = "watches", size = 0.5 },
          { id = "scopes", size = 0.5 },
          { id = "breakpoints", size = 0.25 },
          { id = "stacks", size = 0.25 },
        },
        size = 40,
        position = "right",
      },
      {
        elements = { "repl", "console" },
        size = 10,
        position = "bottom",
      },
    }
  end,
}
