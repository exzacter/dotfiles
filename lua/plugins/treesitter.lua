return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        
        configs.setup({
            ensure_installed = {
            -- Web Dev
            "html", "css", "javascript", "typescript", "tsx", "json",

            -- Backend
            "python", "go", "java", "c", "cpp", "rust", "lua", "c_sharp",

            -- DevOps
            "bash", "yaml", "toml", "dockerfile", "terraform",

            -- DB
            "sql", "json", "csv",

            -- Git
            "gitignore", "gitcommit", "gitattributes",

            -- Miscellaneous
            "markdown", "markdown_inline", "regex",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
