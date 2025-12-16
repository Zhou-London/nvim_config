vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
    silent = true,
    desc = "Explorer"
})

vim.keymap.set("n", "<leader>g", "<cmd>Neogit<CR>", {
    silent = true,
    desc = "Git GUI"
})

vim.keymap.set("n", "<leader>F", "<cmd>Telescope<CR>", {
    silent = true,
    desc = "Telescope"
})

vim.keymap.set({"n", "v"}, "<leader>f", function()
    require("conform").format({
        lsp_fallback = true
    })
end, {
    desc = "Format file"
})

-- Buffer
vim.keymap.set("n", "]b", "<cmd>bn<CR>")
vim.keymap.set("n", "[b", "<cmd>bp<CR>")
vim.keymap.set("n", "[]", "<cmd>b#<CR>")