return {
	"NeogitOrg/neogit",
	cmd = "Neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-mini/mini.pick",
		"folke/snacks.nvim",
	},
	config = function()
		vim.api.nvim_create_autocmd("BufEnter", {
			callback = function()
				if vim.bo.filetype == "NeogitStatus" then
					require("neogit").refresh()
				end
			end,
		})

		require("neogit").setup({
			disable_hint = true,
			graph_style = "kitty",
			process_spinner = true,
		})
	end,
}
