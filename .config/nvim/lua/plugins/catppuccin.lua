return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		local catppuccin = require("catppuccin")

		catppuccin.setup({
			flavour = "macchiato",
			transparent_background = true,
			show_end_of_buffer = false,
			custom_highlights = function(colors)
				return {
					LineNr = { fg = colors.overlay1 },
					Comment = { fg = colors.overlay1 },
				}
			end,
			integrations = {
				mason = true,
				treesitter = true,
				telescope = true,
				cmp = true,
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
