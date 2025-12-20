return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config["clangd"] = {
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--completion-style=detailed",
				"--header-insertion=iwyu",
			},
			filetypes = { "c", "cc", "cpp" },
			init_options = {
				inlayHints = {
					enabled = true,
				},
			},

			capabilities = capabilities,
		}

		vim.lsp.config["lua_ls"] = {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
			capabilities = capabilities,

			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
				},
			},
		}

		vim.lsp.config["cmake_lsp"] = {
			cmd = { "cmake-language-server" },
			filetypes = { "cmake" },
			capabilities = capabilities,
		}
        
        vim.lsp.inlay_hint.enable(true)
		vim.lsp.enable("clangd")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("cmake_lsp")
	end,
}
