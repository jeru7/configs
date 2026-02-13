return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme("gruvbox-material")
  end,
}

-- return {
--   "Mofiqul/adwaita.nvim",
--   lazy = false,
--   priority = 1000,
--
--   -- configure and set on startup
--   config = function()
--     vim.g.adwaita_darker = true -- for darker version
--     vim.g.adwaita_disable_cursorline = true -- to disable cursorline
--     vim.g.adwaita_transparent = false -- makes the background transparent
--     vim.cmd("colorscheme adwaita")
--   end,
-- }
