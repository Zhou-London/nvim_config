return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		opts = {
			options = {
				mode = "buffers", -- buffers | tabs
				numbers = "none", -- none | ordinal | buffer_id
				indicator = {
					style = "icon",
					icon = "┋",
				},
				separator_style = "thin", -- slant | padded_slant | slope | thin | thick
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return icon .. count
				end,
				modified_icon = "󰰐",
				color_icons = true,
				offsets = {
					{
						filetype = "NvimTree",
						text = "Explorer",
						highlight = "Directory",
						separator = false,

					},
				},
				show_buffer_close_icons = true,
				show_close_icon = false,
				always_show_bufferline = true,

				highlights = {
					buffer_selected = {
						fg = "#ffffff",
						bg = "#1f2335",
						bold = true,
					},
					buffer_visible = {
						fg = "#a9b1d6",
						bg = "#1a1b26",
					},
					fill = {
						bg = "#16161e",
					},
				},
			},
		},
	},
}
