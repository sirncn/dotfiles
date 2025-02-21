return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	lazy = false,
	enabled = true,
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({})

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"lua_ls",
				"graphql",
				"emmet_ls",
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettierd",
				"prettier",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
