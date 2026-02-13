return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 20,
    direction = "horizontal",
    open_mapping = [[<c-\>]],
    start_in_insert = true,
    persist_size = false,
    persist_mode = false,

    on_open = function(term)
      local opts = { noremap = true, silent = true }
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<Esc>", [[<C-\><C-n>]], opts)
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
    end,
  },
}
