return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter").setup({
      highlight = { enable = true },
      indent = { enable = true },
      fold = { enable = true },
      ensure_installed = { "lua", "vim", "javascript", "typescript", "tsx", "typescriptreact", "javascriptreact", "python", "go", "rust" },
    })
  end,
}
