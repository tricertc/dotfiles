return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"folke/neodev.nvim",
			{
				"j-hui/fidget.nvim",
				tag = "legacy",
			},
			"b0o/schemastore.nvim",
			"ray-x/lsp_signature.nvim",
		},
		config = function()
			require("neodev").setup()
			require("fidget").setup()

			require("mason").setup()
			require("core.config.lsp.bindings").setup()

			local mason_lspconfig = require("mason-lspconfig")
			local lspconfig = require("lspconfig")

			local servers = require("core.config.lsp.servers")

			mason_lspconfig.setup({
				ensure_installed = vim.tbl_keys(servers),
			})

			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

			mason_lspconfig.setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						settings = servers[server_name],
						capabilities = capabilities,
						on_attach = function(client, bufnr)
							if client.name == "tsserver" then
								client.server_capabilities.documentFormattingProvider = false
							end
							require("lsp_signature").on_attach({
								bind = true,
								floating_window = false,
								handler_opts = {
									border = "rounded",
								},
							}, bufnr)
						end,
					})
				end,
			})
		end,
	},
}
