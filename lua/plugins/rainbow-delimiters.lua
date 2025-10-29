return {
	"hiphish/rainbow-delimiters.nvim",
	lazy = false,
	config = function()
		require("rainbow-delimiters.setup").setup({
			strategy = {
				[""] = "rainbow-delimiters.strategy.global",
				vim = "rainbow-delimiters.strategy.local",
			},
			query = {
				[""] = "rainbow-delimiters",
				-- lua = "rainbow-blocks",
			},
			priority = {
				[""] = 110,
				lua = 210,
			},
			highlight = {
				"RainbowDelimiterYellow",
				"RainbowDelimiterPurple",
				"RainbowDelimiterBlue",
			},
		})
	end,
}
