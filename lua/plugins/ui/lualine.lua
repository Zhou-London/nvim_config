return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },

		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					globalstatus = true,
					section_separators = {
						left = "",
						right = "",
					},
					component_separators = {
						left = "",
						right = "",
					},
					icons_enabled = true,
				},

				sections = {
					lualine_a = { {
						"mode",
						icon = "",
					} },

					lualine_b = {
						{
							"branch",
							icon = "",
						},
						{
							"diff",
							symbols = {
								added = " ",
								modified = " ",
								removed = " ",
							},
						},
					},

					lualine_c = {
						{
							"filename",
							path = 1,
							symbols = {
								readonly = " ",
								modified = "",
							},
						},
					},

					lualine_x = {
						{
							function()
								local clients = vim.lsp.get_active_clients({
									bufnr = 0,
								})
								if #clients == 0 then
									return ""
								end
								return " " .. clients[1].name
							end,
						},
						"encoding",
						"fileformat",
					},

					lualine_y = { "progress" },

					lualine_z = { "location" },
				},

				inactive_sections = {
					lualine_c = { "filename" },
					lualine_x = { "location" },
				},
			})
		end,
	},
}
