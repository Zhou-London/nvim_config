return {{
    "folke/todo-comments.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    opts = {
        signs = true,
        sign_priority = 8,

        keywords = {
            FIX = {
                icon = " ",
                color = "error",
                alt = {"FIXME", "BUG", "FIXIT", "ISSUE"}
            },
            TODO = {
                icon = " ",
                color = "info"
            },
            HACK = {
                icon = " ",
                color = "warning"
            },
            WARN = {
                icon = " ",
                color = "warning",
                alt = {"WARNING", "XXX"}
            },
            NOTE = {
                icon = "󰍨 ",
                color = "hint",
                alt = {"INFO"}
            }
        },

        highlight = {
            before = "",
            keyword = "wide",
            after = "fg",
            pattern = [[.*<(KEYWORDS)\s*:]]
        }
    }

}}
