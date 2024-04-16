local eslint_files = {
  ".eslintrc",
  ".eslintrc.js",
  ".eslintrc.cjs",
  ".eslintrc.json",
}

local prettier_files = {
  ".prettierrc",
  ".prettierrc.js",
  ".prettierrc.json",
  "prettier.config.cjs",
}

local function root_has_file(files)
  for _, file in ipairs(files) do
    if vim.fn.filereadable(vim.fn.getcwd() .. "/" .. file) == 1 then
      return true
    end
  end

  return false
end

return {
  { "windwp/nvim-ts-autotag", config = true },
  {
    "stevearc/conform.nvim",
    config = function()
      local has_eslint = root_has_file(eslint_files)
      local has_prettier = root_has_file(prettier_files)

      local node_formatters = {}

      if has_eslint then
        table.insert(node_formatters, "eslint_d")
      end

      if has_prettier then
        table.insert(node_formatters, "prettierd")
      end

      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          javascript = node_formatters,
          typescript = node_formatters,
          javascriptreact = node_formatters,
          typescriptreact = node_formatters,
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        auto_install = true,
        ensure_installed = { "lua", "vim", "vimdoc", "javascript", "html", "markdown", "markdown_inline" },
        sync_install = false,
        ignore_install = {},
        highlight = { enable = true },
        indent = { enable = true },
        modules = {},
      })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    keys = {
      {
        "<leader>l",
        function()
          require("lint").try_lint()
        end,
        mode = "",
        desc = "Lint buffer",
      },
    },
    config = function()
      local node_linters = {}

      if root_has_file(eslint_files) then
        table.insert(node_linters, "eslint_d")
      end

      local lint = require("lint")

      lint.linters_by_ft = {
        javascript = node_linters,
        typescript = node_linters,
        javascriptreact = node_linters,
        typescriptreact = node_linters,
        svelte = node_linters,
        python = { "pylint" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>o", "<cmd>Lspsaga outline<CR>", desc = "Lspsaga outline" },
    },
    config = true,
  },
  {
    "github/copilot.vim",
    config = function()
      vim.cmd([[
        imap <silent><script><expr> <C-L> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true
        let g:copilot_filetypes = { 'yaml': v:true }
      ]])
    end,
  },
  { "danymat/neogen", config = true },
}
