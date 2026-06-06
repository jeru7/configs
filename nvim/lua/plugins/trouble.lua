return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "Trouble",
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",              desc = "Diagnostics" },
    { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics" },
    { "<leader>xr", "<cmd>Trouble lsp_references toggle<CR>",           desc = "References" },
    { "<leader>xt", "<cmd>Trouble todo toggle<CR>",                     desc = "Todo" },
  },
  opts = {},
}
