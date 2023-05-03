return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"folke/neodev.nvim",
			"j-hui/fidget.nvim",
			"b0o/schemastore.nvim",
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
					})
				end,
			})
		end,
	},
}
