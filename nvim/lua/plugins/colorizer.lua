return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			"*",
		}, {
			RGB = true,
			RRGGBB = true,
			names = false,
			RRGGBBAA = true,
			AARRGGBB = true,
			css = true,
			css_fn = true,
			tailwind = true,
		})
	end,
}
