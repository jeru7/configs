return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    flavour = "frappe",
    transparent_background = false,
    term_colors = true,
    integrations = {
      telescope = true,
      noice = true,
      lualine = true,
      native_lsp = { enabled = true },
      treesitter = true,
      indent_blankline = { enabled = true },
      which_key = true,
      blink_cmp = true,
      bufferline = true,
      notify = true
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
