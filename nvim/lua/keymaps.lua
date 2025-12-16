-- custom functions
function ToggleLineNumbers()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
  else
    vim.wo.relativenumber = true
  end
end

-- keymaps
-- window navigation (:vsplit) - multiple windows
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- buffer navigation (:b)
vim.api.nvim_set_keymap("n", "<M-h>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-l>", ":bnext<CR>", { noremap = true, silent = true })

-- toggle line numbers
vim.api.nvim_set_keymap("n", "<leader>rn", ":lua ToggleLineNumbers()<CR>", { noremap = true, silent = true })

-- space + l: list todos on telescope
vim.keymap.set("n", "<leader>l", ":TodoTelescope<CR>", { noremap = true, silent = true })

-- space + rf to show references
vim.api.nvim_set_keymap("n", "<leader>rf", "<cmd>Telescope lsp_references<CR>", { noremap = true, silent = true })
-- space + rr to show the number of references
vim.api.nvim_set_keymap("n", "<leader>rr", "<cmd>ReferencerToggle<CR>", { noremap = true, silent = true })
