return {
  "sudo-tee/opencode.nvim",
  config = function()
    require("opencode").setup({
      ui = {
        output = {
          rendering = {
            markdown_debounce_ms = 500,
          },
        },
      },
      debug = {
        enabled = true,
        capture_streamed_events = true,
        quick_chat = {
          keep_session = false,
          set_active_session = false,
        },
      },
    })
  end,

  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
    },
    {
      "hrsh7th/nvim-cmp",
    },
    "folke/snacks.nvim",
  },
}
