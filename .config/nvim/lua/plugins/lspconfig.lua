return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	keys = {
		{ "<leader>tr", "<cmd>Telescope lsp_references<CR>", desc = "Show references" },
		{ "<leader>td", "<cmd>Telescope lsp_definitions<CR>", desc = "Show definitions" },
		{ "<leader>ti", "<cmd>Telescope lsp_implementations<CR>", desc = "Show implementations" },
		{ "<leader>tt", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Show type definitions" },
		{ "<leader>tld", "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "List buffer diagnostics" },
		{ "<leader>cd", vim.lsp.buf.declaration, desc = "Go to declaration" },
		{ "<leader>ca", vim.lsp.buf.code_action, desc = "See available code actions" },
		{ "<leader>cc", vim.lsp.buf.rename, desc = "Smart rename" },
		{ "<leader>ch", vim.lsp.buf.hover, desc = "Show documentation for what is under cursor" },
		{ "<leader>dl", vim.diagnostic.open_float, desc = "Show line diagnostics" },
		{ "<leader>dN", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic" },
		{ "<leader>dn", vim.diagnostic.goto_next, desc = "Go to next diagnostic" },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local mason_lspconfig = require("mason-lspconfig")
		local capabilities = cmp_nvim_lsp.default_capabilities()
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }

		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason_lspconfig.setup_handlers({
			function(serverName)
				lspconfig[serverName].setup({
					capabilities = capabilities,
				})
			end,
			["graphql"] = function()
				lspconfig["graphql"].setup({
					capabilities = capabilities,
					filetypes = { "graphql", "gql", "typescriptreact", "javascriptreact" },
				})
			end,
			["emmet_ls"] = function()
				lspconfig["emmet_ls"].setup({
					capabilities = capabilities,
					filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
				})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
							workspace = {
								library = {
									[vim.fn.expand("$VIMRUNTIME/lua")] = true,
									[vim.fn.stdpath("config") .. "/lua"] = true,
								},
							},
						},
					},
				})
			end,
		})
	end,
}
