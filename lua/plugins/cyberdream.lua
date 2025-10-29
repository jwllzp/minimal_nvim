return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local c = require("cyberdream.colors").default
		require("cyberdream").setup({
			variant = "default",
			transparent = true,
			italic_comments = false,
			hide_fillchars = false,
			borderless_pickers = false,
			terminal_colors = true,
			cache = true,
			extensions = {
				telescope = true,
				notify = true,
				mini = true,
			},
			highlights = {
				Cursor = { reverse = true },
				CursorLineNr = { fg = c.fg },
				Delimiter = { fg = c.grey },
				Boolean = { fg = c.pink, bold = true },
				Directory = { fg = c.pink },
				FloatBorder = { fg = c.grey },
				Keyword = { fg = c.orange, bold = true },
				PreProc = { fg = c.pink },
				Special = { fg = c.pink },
				TelescopeBorder = { fg = c.grey },
				TelescopeMatching = { fg = c.pink, bold = true },
				["@keyword.type"] = { fg = c.orange, italic = false, bold = true },
				["@spell"] = { fg = c.grey },
				["@string.documentation.python"] = { fg = c.grey },
			},
		})

		vim.cmd.colorscheme("cyberdream")
	end,
}
