return {{
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    priority = 1000,

    config = function()
        require("nvim-web-devicons").setup({
            override = {
                lua = {
                    icon = "",
                    color = "#51a0cf",
                    name = "Lua"
                },
                cpp = {
                    icon = "󰙲",
                    color = "#4dffe4",
                    name = "Cpp"
                },
                go = {
                    icon = "󰟓",
                    color = "#4dffe4",
                    name = "Go"
                },
                java = {
                    icon = "󰅶",
                    color = "#ff6d4d",
                    name = "Java"
                },
                python = {
                    icon = "",
                    color = "#fffc45",
                    name = "Python"
                },
                md = {
                    icon = "",
                    color = "#ffdb87",
                    name = "Markdown"
                }
            },

            color_icons = true,

            override_by_extension = {
                ["h"] = {
                    icon = "",
                    color = "#ff38b3",
                    name = "c-header"
                },

                ["hpp"] = {
                    icon = "",
                    color = "#ff38b3",
                    name = "cpp-header"
                },

                ["env"] = {
                    icon = "",
                    color = "#ecd53f",
                    name = "Env"
                }

            },

            override_by_filename = {
                ["Dockerfile"] = {
                    icon = "",
                    color = "#2496ed",
                    name = "Dockerfile"
                },
                ["CMakeLists.txt"] = {
                    icon = "󱥒",
                    color = "#3d33ff",
                    name = "CMakeLists"
                },
                ["README.md"] = {
                    icon = "",
                    color = "#5759ad",
                    name = "README"
                }
            },

            override_by_operating_system = {
                ["apple"] = {
                    icon = "",
                    color = "#A2AAAD",
                    cterm_color = "248",
                    name = "Apple"
                }
            },

            default = true
        })

    end
}}
