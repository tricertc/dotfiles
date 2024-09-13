local M = {}

M.cssls = {
  css = {
    lint = {
      unknownAtRules = "ignore",
    },
  },
}

M.emmet_ls = {}

M.jsonls = {
  json = {
    schemas = require("schemastore").json.schemas(),
    validate = { enable = true },
  },
}

M.lua_ls = {}

M.ts_ls = {}

M.tailwindcss = {
  tailwindCSS = {
    experimental = {
      classRegex = {
        { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
        { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
      },
    },
  },
}

return M
