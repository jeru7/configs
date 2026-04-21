return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = { { "<leader>e", ":Neotree toggle<CR>", desc = "Toggle Neo-tree" } },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        window = {
          position = "left",
          padding = { 0, 0, 0, 0 },
          mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
          },
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        indent = {
          with_markers = true,
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(_)
            vim.cmd("Neotree close")
          end,
        },
      },
    })
  end,
}
