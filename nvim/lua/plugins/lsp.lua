return {
	-- Mason
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = true,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = { "html", "tailwindcss", "emmet_ls", "pyright" },
			automatic_installation = true,
		},
	},

	-- TypeScript tools
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- LSP servers
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			capabilities.textDocument.semanticTokens = nil

			vim.diagnostic.config({
				virtual_text = false,
				float = { border = "rounded", source = "always", prefix = "●" },
				update_in_insert = true,
				severity_sort = true,
			})

			vim.keymap.set("n", "<A-j>", vim.diagnostic.goto_next, { silent = true })
			vim.keymap.set("n", "<A-k>", vim.diagnostic.goto_prev, { silent = true })

			vim.api.nvim_create_autocmd("CursorHold", {
				callback = function()
					vim.diagnostic.open_float(nil, { focus = false })
				end,
			})

			-- global default LSP options
			vim.lsp.config("*", {
				capabilities = capabilities,
				flags = { debounce_text_changes = 150 },
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<A-j>", vim.diagnostic.goto_next, { buffer = bufnr, silent = true })
					vim.keymap.set("n", "<A-k>", vim.diagnostic.goto_prev, { buffer = bufnr, silent = true })
				end,
			})

			vim.lsp.enable({ "html", "tailwindcss", "emmet_ls", "pyright" })
		end,
	},

	-- none-ls (must load after LSP)
	{
		"nvimtools/none-ls.nvim",
		lazy = false,
		dependencies = { "nvimtools/none-ls-extras.nvim" },
		config = function()
			local ok, null_ls = pcall(require, "null-ls")
			if not ok then
				vim.notify("null-ls not found", vim.log.levels.ERROR)
				return
			end

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua.with({
						extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
					}),
					null_ls.builtins.formatting.prettier.with({
						filetypes = { "javascript", "typescript", "html", "css", "javascriptreact", "typescriptreact" },
					}),
				},
			})

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})

			vim.keymap.set("n", "<leader>gf", function()
				vim.lsp.buf.format({ async = true })
			end, { silent = true })
		end,
	},

	-- Autocomplete + Snippets
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"mlaursen/vim-react-snippets",
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
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}),
			})
		end,
	},
}
