local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			-- apply whatever logic you want (in this example, we'll only use null-ls)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				lsp_formatting(bufnr)
			end,
		})
	end
end

return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			local b = null_ls.builtins

			null_ls.setup({
				sources = {
					b.formatting.stylua,
					b.formatting.prismaFmt,

					b.formatting.prettierd.with({
						prefer_local = "./node_modules/.bin/prettier",
						condition = function(utils)
							return utils.root_has_file({
								".prettierrc",
								".prettierrc.json",
								".prettierrc.yml",
								".prettierrc.yaml",
								".prettierrc.js",
								".prettierrc.cjs",
								".prettierrc.toml",
								"prettier.config.js",
								"prettier.config.cjs",
								"prettier.config.mjs",
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
				on_attach = on_attach,
			})
		end,
	},
}
