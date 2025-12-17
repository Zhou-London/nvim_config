return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		git = {
			enable = true,
			ignore = false,
			show_on_dirs = true,
			show_on_open_dirs = false,
			timeout = 200,
		},
		diagnostics = {
			enable = true,
			show_on_dirs = true,
			icons = {
				hint = "",
				info = "",
				warning = "",
				error = "",
			},
		},

		view = {
			preserve_window_proportions = true,
		},

		renderer = {
			highlight_git = true,
			icons = {
				show = {
					git = false, -- true if you wish
				},
				--glyphs = {
				--git = {
				--unstaged = "",
				--staged = "󱓟",
				--unmerged = "",
				--renamed = "",
				--untracked = "",
				--deleted = "",
				--ignored = "",
				--},
				--},
			},
		},
	},
}
