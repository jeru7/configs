return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ok, treesitter = pcall(require, "nvim-treesitter")
    if not ok then
      vim.notify("Failed to load nvim-treesitter", vim.log.levels.ERROR)
      return
    end
    
    treesitter.setup({
      auto_install = false,
      highlight = {
        enable = true,
        disable = { "markdown" },
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = false },
      matchup = { enable = true },
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "lua",
      },
      incremental_selection = { enable = true },
    })

    local last_buf = nil
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        local current_buf = vim.api.nvim_get_current_buf()
        if last_buf and vim.api.nvim_buf_is_loaded(last_buf) then
          vim.cmd("silent! TSBufDisable highlight")
        end
        vim.cmd("silent! TSBufEnable highlight")
        last_buf = current_buf
      end,
    })
  end,
}
