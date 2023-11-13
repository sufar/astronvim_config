-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>1"] = {
      function() require("astronvim.utils.buffer").nav_to(1) end,
    },
    ["<leader>2"] = {
      function() require("astronvim.utils.buffer").nav_to(2) end,
    },
    ["<leader>3"] = {
      function() require("astronvim.utils.buffer").nav_to(3) end,
    },
    ["<leader>4"] = {
      function() require("astronvim.utils.buffer").nav_to(4) end,
    },
    ["<leader>5"] = {
      function() require("astronvim.utils.buffer").nav_to(5) end,
    },
    ["<leader>6"] = {
      function() require("astronvim.utils.buffer").nav_to(6) end,
    },
    ["<leader>7"] = {
      function() require("astronvim.utils.buffer").nav_to(7) end,
    },
    ["<leader>8"] = {
      function() require("astronvim.utils.buffer").nav_to(8) end,
    },
    ["<leader>9"] = {
      function() require("astronvim.utils.buffer").nav_to(9) end,
    },
    ["<leader>0"] = {
      function() require("astronvim.utils.buffer").nav_to(10) end,
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-h>"] = { "<Left>" },
    ["<C-j>"] = { "<Down>" },
    ["<C-k>"] = { "<Up>" },
    ["<C-l>"] = { "<Right>" },
  },
}
