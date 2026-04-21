return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "html",
        "tailwindcss",
        "emmet_ls",
        "pyright",
      },
      automatic_installation = true,
    },
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("typescript-tools").setup({
        capabilities = capabilities,
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
        on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
        end,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.diagnostic.config({
        virtual_text = false,
        float = { border = "rounded", source = "always", prefix = "●" },
        update_in_insert = true,
        severity_sort = true,
      })

      vim.keymap.set("n", "<A-j>", vim.diagnostic.goto_next)
      vim.keymap.set("n", "<A-k>", vim.diagnostic.goto_prev)

      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, { focus = false })
        end,
      })

      vim.lsp.config("*", {
        capabilities = capabilities,
        flags = { debounce_text_changes = 150 },
      })

      vim.lsp.enable({
        "html",
        "tailwindcss",
        "emmet_ls",
        "pyright",
      })
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua.with({
            extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
          }),
          null_ls.builtins.formatting.prettier,
        },
      })

      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        callback = function(args)
          vim.lsp.buf.format({
            bufnr = args.buf,
            async = true,
            timeout_ms = 3000,
            filter = function(client)
              return client.supports_method("textDocument/formatting")
            end,
          })
        end,
      })
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<A-j>"] = cmp.mapping.select_next_item(),
          ["<A-k>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }),
      })
    end,
  },
}
