local M = {}

M.lua_ls = {
	Lua = {
		workspace = {
			checkThirdParty = false,
			telemetry = { enable = false },
		},
		diagnostics = {
			globals = {
				"vim",
			},
		},
	},
}

M.jsonls = {
	json = {
		schemas = require("schemastore").json.schemas(),
		validate = { enable = true },
	},
}

M.tsserver = {}
M.cssls = {}
M.emmet_ls = {}

return M
