return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local oil = require("oil")
		oil.setup({
			columns = { "icon" },
			watch_for_changes = true,
			view_options = {
				natural_order = false,
			},
			float = {
				-- Padding around the floating window
				padding = 2,
				max_width = 80,
				max_height = 15,
				border = "rounded",
				win_options = {
					winblend = 0,
				},
				-- optionally override the oil buffers window title with custom function: fun(winid: integer): string
				get_win_title = nil,
				-- preview_split: Split direction: "auto", "left", "right", "above", "below".
				preview_split = "below",
				-- This is the config that will be passed to nvim_open_win.
				-- Change values here to customize the layout
				override = function(conf)
					return conf
				end,
			},
			keymaps = {
				["<C-p>"] = function()
					oil.open_preview({ vertical = true }, function()
						local total_columns = vim.o.columns
						local current_window = vim.api.nvim_get_current_win()
						local target_columns = math.floor(total_columns * 0.25)
						vim.api.nvim_win_set_width(current_window, target_columns)
					end)
				end,
				["g."] = "actions.toggle_hidden",
				["<C-v>"] = {
					"actions.select",
					opts = { vertical = true },
					desc = "Open the entry in a vertical split",
				},
				["<C-x>"] = {
					"actions.select",
					opts = { horizontal = true },
					desc = "Open the entry in a horizontal split",
				},
				["<Esc>"] = function()
					oil.close()
				end,
			},
		})

		vim.keymap.set("n", "-", oil.open, { desc = "Open parent directory" })
		vim.keymap.set("n", "<leader>-", oil.toggle_float, { desc = "Open float parent directory" })
	end,
}
