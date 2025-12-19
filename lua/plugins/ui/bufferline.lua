return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "famiu/bufdelete.nvim",
    },
    config = function()
      local bufferline = require("bufferline")

      bufferline.setup({
        options = {
          mode = "buffers",
          style_preset = bufferline.style_preset.minimal,
          numbers = "none",
          diagnostics = "nvim_lsp",

          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = false,
            },
          },

          close_command = function(bufnum)
            require("bufdelete").bufdelete(bufnum, true)
          end,

          right_mouse_command = function(bufnum)
            require("bufdelete").bufdelete(bufnum, true)
          end,

          color_icons = true,
        },
      })
    end,
  },
}
