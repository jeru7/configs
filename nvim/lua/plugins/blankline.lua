return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPost" },
	main = "ibl",
	config = function()
		require("ibl").setup({
			indent = { char = "│" },
			scope = { enabled = true },
			exclude = {
				filetypes = {
					"help",
					"dashboard",
					"neo-tree",
					"Trouble",
					"lazy",
					"mason",
					"markdown",
				},
			},
		})
	end,
}
