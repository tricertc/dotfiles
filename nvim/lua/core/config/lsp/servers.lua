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

M.cssls = {
	css = {
		lint = {
			unknownAtRules = "ignore",
		},
	},
}

M.yamlls = {
	yaml = {
		schemas = require("schemastore").yaml.schemas(),
	},
}

M.tsserver = {}

M.emmet_ls = {}
M.tailwindcss = {}

M.prismals = {}

return M
