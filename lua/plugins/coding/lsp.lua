return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.lsp.config["clangd"] = {
            cmd = {"clangd", "--background-index", "--clang-tidy", "--completion-style=detailed",
                   "--header-insertion=iwyu"},
            filetypes = {"c", "cc", "cpp"},
            capabilities = capabilities
        }

        vim.lsp.enable("clangd")
    end
}
