return {
  "folke/trouble.nvim",
  config = true,
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>" },
    { "<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>" },
    { "<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<cr>" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>" },
  },
}
