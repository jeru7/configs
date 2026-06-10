return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          offsets = {
            {
              filetype = "neo-tree",
              text = "byte by byte.",
              text_align = "left",
              highlight = "NeoTreeOffsetLabel",
              separator = false,
            },
          },
          diagnostics = "nvim_lsp",
          separator_style = "slope",
          indicator = { style = "none" },
          show_buffer_close_icons = false,
          modified_icon = "●",
          show_close_icon = false,
          show_tab_indicators = false,
          max_name_length = 18,
          truncate_names = true,
          tab_size = 18,
        },
        highlights = {
          fill = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          background = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          buffer_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          buffer_selected = {
            fg = "#6A9955",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          separator = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          separator_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          separator_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          close_button = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          close_button_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          close_button_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          modified = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          modified_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          modified_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          diagnostic = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          diagnostic_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          diagnostic_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          error = {
            fg = "#F14C4C",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          error_selected = {
            fg = "#F14C4C",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          error_visible = {
            fg = "#F14C4C",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          error_diagnostic = {
            fg = "#F14C4C",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          error_diagnostic_selected = {
            fg = "#F14C4C",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          error_diagnostic_visible = {
            fg = "#F14C4C",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          warning = {
            fg = "#ECA05F",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          warning_selected = {
            fg = "#ECA05F",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          warning_visible = {
            fg = "#ECA05F",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          warning_diagnostic_selected = {
            fg = "#ECA05F",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          warning_diagnostic_visible = {
            fg = "#ECA05F",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          info = {
            fg = "#75BEFF",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          info_selected = {
            fg = "#75BEFF",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          info_visible = {
            fg = "#75BEFF",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          info_diagnostic_selected = {
            fg = "#75BEFF",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          info_diagnostic_visible = {
            fg = "#75BEFF",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          hint = {
            fg = "#A0A0A0",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          hint_selected = {
            fg = "#A0A0A0",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          hint_visible = {
            fg = "#A0A0A0",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          hint_diagnostic_selected = {
            fg = "#A0A0A0",
            bg = { attribute = "bg", highlight = "Normal" },
          },
          hint_diagnostic_visible = {
            fg = "#A0A0A0",
            bg = { attribute = "bg", highlight = "Normal" },
          },
        },
      })
      vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#1e1e1e" })
      vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#1e1e1e", bg = "#1e1e1e" })
      vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "#1e1e1e", bg = "#1e1e1e" })
      vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible", { fg = "#1e1e1e", bg = "#1e1e1e" })
      vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "#1e1e1e" })
      vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "#1e1e1e" })
    end,
  },
}
