local success, wk = pcall(require, "which-key")
if not success then
  return
end

wk.add({
  -- General
  { "<C-a>", "ggVG", desc = "Select all" },
  { "<leader>ng", "<cmd>Neogen<cr>", desc = "Generate comments" },

  -- NvimTree
  { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree toggle" },
  { "<leader>fe", "<cmd>NvimTreeFindFile<cr>", desc = "NvimTree find file" },

  -- Telescope
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live gre" },
  { "<leader>fb", "<cmd>Telescope buffers", desc = "Telescope buffers" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags" },
  { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Telescope find references" },
  { "<leader>mo", "<cmd>Telescope symbols<cr>", desc = "Telescope symbols" },

  -- Buffers
  { "<Tab>", "<cmd>bn<cr>", desc = "Next buffer" },
  { "<S-Tab>", "<cmd>bp<cr>", desc = "Previous buffer" },
  { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close other buffers" },
  { "<leader>bd", MiniBufremove.delete, desc = "Delete buffer" },
  { "<leader>bc", MiniBufremove.delete, desc = "Delete buffer" },
  { "<leader>bw", MiniBufremove.wipeout, desc = "Delete buffer" },

  -- Trouble
  { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Trouble diagnostics" },
  { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Trouble document diagnostics" },

  -- Noice
  { "<leader>nd", "<cmd>NoiceDismiss<cr>", desc = "Dismiss alerts" },
  { "<leader>nh", "<cmd>NoiceHistory<cr>", desc = "Alert history" },

  -- Copilot
  -- { "<leader>cp", "<cmd>Copilot panel<cr>", desc = "Copilot panel" },
  { "<leader>ccp", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat toggle" },
  { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat explain" },
  { "<leader>cco", "<cmd>CopilotChatOptimize<cr>", desc = "CopilotChat optimize" },
  { "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat review" },

  -- TwoslashQueries
  { "<C-t><C-t>", "<cmd>TwoslashQueriesInspect<cr>", desc = "TwoslashQueries inspect" },
  { "<C-t>", "<cmd>TwoslashQueriesRemove<cr>", desc = "TwoslashQueries remove" },
})
