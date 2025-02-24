return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = function()
		return {
			options = {
				icons_enabled = true,
				theme = "catppuccin",
				section_separators = { left = "", right = "" },
				component_separators = "|",
				disabled_filetypes = {},
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" } } },
				lualine_b = {
					"branch",
					{
						"filename",
						file_status = true, -- displays file status (readonly status, modified status)
						path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
					},
				},
				lualine_c = {},
				lualine_x = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = " ",
						},
					},
					"encoding",
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { { "location", separator = { right = "" } } },
			},
			inactive_sections = {
				lualine_a = {
					{
						"filename",
						file_status = true, -- displays file status (readonly status, modified status)
						path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
					},
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = { "fugitive" },
		}
	end,
	config = function(_, opts)
		local lualine = require("lualine")
		lualine.setup(opts)
	end,
}
