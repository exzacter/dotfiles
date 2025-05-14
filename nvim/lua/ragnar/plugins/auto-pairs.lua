return {
    "windwp/nvim-autopairs",
    event = {"InsertEnter"},
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local autopairs = require("nvim-autopairs")

        autopairs.setup({
            check_ts = true,
            ts_config = {
                lua = {"string"},
                javascript = {"template_string"},
                typescript = {"string", "template_string"},
                tsx = {"string", "template_string", "jsx_text", "jsx_expression"},
                go = {"string"},
                html = {"text"},
                css = {"string"},
            },
        })

        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")

        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    end,
}
