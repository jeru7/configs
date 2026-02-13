return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  -- event = { "BufReadPre", "BufNewFile" }, -- Alternative lazy loading for performance
  opts = {
    -- Enable features you want
    highlight = { enable = true },
    indent = { enable = true },
    -- Add other modules like textobjects, context, etc. if needed
    -- textobjects = { enable = true },
    -- context = { enable = true },

    -- Specify languages to install automatically
    ensure_installed = {
      "lua",
      "vim",
      "javascript",
      "typescript",
      "tsx",
      "typescriptreact",
      "javascriptreact",
      "python",
      "go",
      "rust",
    },
    -- Disable auto-install for large files (optional)
    -- ignore_install = { "lua" },
  },
  -- You might also need to configure nvim-treesitter-textobjects separately if used
  -- {
  --   'nvim-treesitter/nvim-treesitter-textobjects',
  -- },
}
