return {
  "saghen/blink.cmp",
  version = "v1.*",
  dependencies = {
    "saghen/blink.lib",
    "rafamadriz/friendly-snippets",
  },
  opts = {
    completion = {
      accept = {
        resolve_timeout_ms = 1000,
      }
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    keymap = {
      preset = "enter",
      ["<C-Space>"] = { "show", "hide" },
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    }
  }
}
