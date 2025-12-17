return {
	"hrsh7th/nvim-cmp",
	dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "onsails/lspkind.nvim" },
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		-- Icon Config
		lspkind.init({
			symbol_map = {},
		})

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({
					select = true,
				}),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
			sources = { {
				name = "nvim_lsp",
			} },
			window = {
				completion = {
					border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
					winhighlight = "Normal:Pmenu,FloatBorder:PmenuBorder,CursorLine:PmenuSel",
					max_height = 10,
					max_width = 50,
				},
				documentation = {
					border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
				},
			},
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text",
					maxwidth = 50,
					ellipsis_char = "…",
					menu = {
						buffer = "[BUF]",
						nvim_lsp = "[LSP]",
						path = "[PATH]",
						luasnip = "[SNIP]",
					},
				}),
			},
		})

		vim.api.nvim_set_hl(0, "Pmenu", {
			bg = "#1f2335",
		})
		vim.api.nvim_set_hl(0, "PmenuSel", {
			bg = "#3b4261",
		})
		vim.api.nvim_set_hl(0, "PmenuBorder", {
			fg = "#565f89",
		})
	end,
}
