vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.relativenumber = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "LineNr", {
	fg = "#5c6370",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
	fg = "#abb2bf",
	bold = false,
})

vim.opt.signcolumn = "yes"

vim.api.nvim_set_hl(0, "SignColumn", {
	bg = "none",
})

vim.opt.cursorline = true

vim.api.nvim_set_hl(0, "CursorLine", {
	bg = "#2a2e36",
})

vim.opt.fillchars:append({ eob = " ", vert = " " })

vim.diagnostic.config({
	virtual_text = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "·",
			[vim.diagnostic.severity.WARN] = "·",
			[vim.diagnostic.severity.INFO] = "·",
			[vim.diagnostic.severity.HINT] = "·",
		},
	},
	underline = true,
	update_in_insert = false,
})

vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#6b8e23" })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#c0a36e" })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#8b5f65" })
vim.api.nvim_set_hl(0, "NvimTreeGitIgnored", { fg = "#5c6370" })
