return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {

        },

        keys = {
            {"<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
            {"<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit Logs" },
            {"<leader>es", function() require("snacks").explorer() end, desc = "Open Snacks Explorer" },
        }
    }

}
