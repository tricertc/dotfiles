local border = {
  { "┌", "FloatBorder" },
  { "─", "FloatBorder" },
  { "┐", "FloatBorder" },
  { "│", "FloatBorder" },
  { "┘", "FloatBorder" },
  { "─", "FloatBorder" },
  { "└", "FloatBorder" },
  { "│", "FloatBorder" },
}

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "folke/neodev.nvim",
    },
    init = function()
      vim.diagnostic.config({
        virtual_text = {
          prefix = "■ ", -- Could be '●', '▎', 'x', '■', , 
        },
        float = { border = border },
      })
    end,
    config = function()
      require("neodev").setup()

      local servers = require("core.config.lsp.servers")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({
              settings = servers[server_name],
              capabilities = capabilities,
              handlers = {
                ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
                ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
              },
              on_attach = function(client, bufnr)
                if client.name == "tsserver" then
                  client.server_capabilities.documentFormattingProvider = false
                  require("twoslash-queries").attach(client, bufnr)
                end
              end,
            })
          end,
        },
      })

      require("core.config.lsp.bindings").setup()
    end,
  },
}
