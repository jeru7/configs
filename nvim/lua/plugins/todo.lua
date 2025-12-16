return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    highlight = {
      before = "",
      keyword = "wide",
      after = "",
    },
    search = {
      pattern = [[\b(KEYWORDS):]],
    },
    keywords = {
      FIX = {
        icon = " ", -- icon used for the sign, and in search results
        color = "#ff6666", -- can be a hex color, or a named color (see below)
        alt = { "BUG" },
      },
      TODO = { icon = " ", color = "#6fcdb6" },
      HACK = { icon = " ", color = "#cc8800" },
      WARN = { icon = " ", color = "#cc8800" },
      PERF = { icon = " ", color = "#00c95b", alt = { "DONE" } },
      NOTE = { icon = "󰎛 ", color = "#6A9955", alt = { "INFO" } },
      TEST = { icon = " ", color = "#9f54d1", alt = { "TESTING", "PASSED", "FAILED" } },
    },
  },
  event = "BufReadPost",
}
