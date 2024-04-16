local M = {}

M.cssls = {}

M.emmet_ls = {}

M.jsonls = {
  json = {
    schemas = require("schemastore").json.schemas(),
    validate = { enable = true },
  },
}

M.lua_ls = {}

M.tsserver = {}

return M
