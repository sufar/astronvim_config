return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = "leetcode" ~= vim.fn.argv()[1],
    opts = {
        arg = "leetcode",
        lang="rust",
        cn = {
            enabled = true,
        },
        directory = "/home/zugle/github/leetcode/rust",
        description = {
            width = "100%", ---@type string | integer
        }
        -- configuration goes here
    },
    config = function(_, opts)
        vim.keymap.set("n", "<leader>aq", "<cmd>Leet tabs<cr>")
        vim.keymap.set("n", "<leader>am", "<cmd>Leet menu<cr>")
        vim.keymap.set("n", "<leader>ac", "<cmd>Leet console<cr>")
        vim.keymap.set("n", "<leader>al", "<cmd>Leet lang<cr>")
        vim.keymap.set("n", "<leader>ad", "<cmd>Leet desc toggle<cr>")
        vim.keymap.set("n", "<leader>ar", "<cmd>Leet run<cr>")
        vim.keymap.set("n", "<leader>as", "<cmd>Leet submit<cr>")
        require("leetcode").setup(opts)
    end,
}
