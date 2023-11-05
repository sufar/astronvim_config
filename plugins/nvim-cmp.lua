-- https://docs.astronvim.com/recipes/cmp/
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, config) config.mapping["<CR>"] = require("cmp").mapping.confirm { select = true } end,
}
