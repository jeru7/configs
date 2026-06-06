return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          offsets = {
            {
              filetype = "neo-tree",
              text = "byte by byte.",
              highlight = "NeoTreeOffsetLabel",
            },
          },
          separator_style = "thin",
          modified_icon = "● ",
          indicator = { style = "none" },
          show_close_icon = false,
          show_buffer_close_icons = false,
          diagnostics = "nvim_lsp",
          show_buffer_icons = true,
          always_show_bufferline = true,
          max_name_length = 18,
          truncate_names = true,
          tab_size = 18,
        },
      })
      vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#292c3c" })
    end,
  },
}
