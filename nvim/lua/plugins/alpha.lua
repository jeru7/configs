return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[ ▄▄▄██▀▀▀▓█████  ██▀███   █    ██ ]],
      [[   ▒██   ▓█   ▀ ▓██ ▒ ██▒ ██  ▓██▒]],
      [[   ░██   ▒███   ▓██ ░▄█ ▒▓██  ▒██░]],
      [[▓██▄██▓  ▒▓█  ▄ ▒██▀▀█▄  ▓▓█  ░██░]],
      [[ ▓███▒   ░▒████▒░██▓ ▒██▒▒▒█████▓ ]],
      [[ ▒▓▒▒░   ░░ ▒░ ░░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒ ]],
      [[ ▒ ░▒░    ░ ░  ░  ░▒ ░ ▒░░░▒░ ░ ░ ]],
      [[ ░ ░ ░      ░     ░░   ░  ░░░ ░ ░ ]],
      [[ ░   ░      ░  ░   ░        ░     ]],
    }
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.footer.opts.hl = "AlphaHeader"

    dashboard.section.footer.val = "byte by byte."

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
    }

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#6A9955", bold = true })

    alpha.setup(dashboard.config)
  end,
}
