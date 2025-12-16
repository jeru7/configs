return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("notify").setup({})

    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        progress = {
          enabled = true,
          format = "lsp_progress",
          format_done = "lsp_progress_done",
          throttle = 1000 / 30,
          view = "mini",
        },
      },
      messages = {
        enabled = true,
        view = "mini",
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
      cmdline = {
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
          input = {},
        },
        view = "cmdline_popup",
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
        border = {
          style = "rounded",
          padding = { 1, 2 },
          highlight = "FloatBorder",
        },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            min_height = 10,
          },
          view = "split",
        },
      },
      notify = {
        enabled = true,
        view = "mini",
      },
    })
  end,
}
