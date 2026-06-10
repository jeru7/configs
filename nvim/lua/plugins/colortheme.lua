return {
	"Mofiqul/vscode.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		local c = require("vscode.colors").get_colors()
		require("vscode").setup({
			transparent = false,
			italic_comments = true,
			italic_inlayhints = true,
			underline_links = true,
			disable_nvimtree_bg = false,
			terminal_colors = true,
			color_overrides = {},
			group_overrides = {
				Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
			},
		})
		vim.cmd.colorscheme("vscode")
	end,
}
