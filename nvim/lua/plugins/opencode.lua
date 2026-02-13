return {
	"sudo-tee/opencode.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"MeanderingProgrammer/render-markdown.nvim",
			ft = { "markdown", "opencode_output" },
			opts = {
				anti_conceal = { enabled = false },
				file_types = { "markdown", "opencode_output" },
			},
		},
		"saghen/blink.cmp",
		"folke/snacks.nvim",
	},

	lazy = false,
	config = function()
		local ok, opencode = pcall(require, "opencode")
		if not ok then
			vim.notify("opencode.nvim failed to load", vim.log.levels.ERROR)
			return
		end

		opencode.setup({
			default_global_keymaps = true,
			keymap_prefix = "<leader>o",
			window = {
				width = 100,
				focusable = false,
				winfix = false,
			},
		})
	end,
}
