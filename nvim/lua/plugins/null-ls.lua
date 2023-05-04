return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			local b = null_ls.builtins

			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			null_ls.setup({
				sources = {
					b.formatting.stylua,

					b.formatting.prettierd.with({
						prefer_local = "./node_modules/.bin/prettier",
						condition = function(utils)
							return utils.root_has_file({
								"prettier.config.js",
								".prettierrc",
								".prettierrc.json",
								".prettierrc.yml",
								".prettierrc.yaml",
								".prettierrc.js",
								".prettierrc.cjs",
								".prettierrc.toml",
							})
						end,
					}),

					b.formatting.eslint_d.with({
						prefer_local = "./node_modules/.bin/eslint",
						condition = function(utils)
							return utils.root_has_file({
								".eslintrc.js",
								".eslintrc.cjs",
								".eslintrc.yaml",
								".eslintrc.yml",
								".eslintrc.json",
								".eslintrc",
							})
						end,
					}),

					b.diagnostics.eslint_d.with({
						prefer_local = "./node_modules/.bin/eslint",
						condition = function(utils)
							return utils.root_has_file({
								".eslintrc.js",
								".eslintrc.cjs",
								".eslintrc.yaml",
								".eslintrc.yml",
								".eslintrc.json",
								".eslintrc",
							})
						end,
					}),
				},

				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({
									filter = function(_client)
										return _client.name ~= "null-ls"
									end,
									bufnr = bufnr,
								})
							end,
						})
					end
				end,
			})
		end,
	},
}
