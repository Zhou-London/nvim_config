-- Enable Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("config.appearance")
require("config.options")
require("config.keymaps")

require("lazy").setup({
	spec = {
		{
			import = "plugins.core",
		},
		{
			import = "plugins.ui",
		},
		{
			import = "plugins.editor",
		},
		{
			import = "plugins.coding",
		},
	},

	ui = {
		border = "rounded",

		icons = {
			ft = "📂",
			lazy = "💤 ",
			loaded = "●",
			not_loaded = "○",
			plugin = "🔌",
		},
	},
})
