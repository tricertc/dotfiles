local success, wk = pcall(require, "which-key")
if not success then
  return
end

wk.register({
  name = "General",
  ["<C-a>"] = { "ggVG", "Select all" },
  ["<leader>"] = {
    n = {
      g = { "<cmd>Neogen<cr>", "Generate comments" },
    },
  },
})

wk.register({
  name = "NvimTree",
  e = { "<cmd>NvimTreeToggle<cr>", "NvimTree toggle" },
  fe = { "<cmd>NvimTreeFindFile<cr>", "NvimTree find file" },
}, { prefix = "<leader>" })
wk.register({
  name = "Telescope",
  f = {
    f = { "<cmd>Telescope find_files<cr>", "Telescope find files" },
    g = { "<cmd>Telescope live_grep<cr>", "Telescope live gre" },
    b = { "<cmd>Telescope buffers", "Telescope buffers" },
    h = { "<cmd>Telescope help_tags<cr>", "Telescope help tags" },
    r = { "<cmd>Telescope lsp_references<cr>", "Telescope find references" },
  },
  m = {
    o = { "<cmd>Telescope symbols<cr>", "Telescope symbols" },
  },
}, { prefix = "<leader>" })

wk.register({
  name = "Buffers",
  ["<Tab>"] = { "<cmd>bn<cr>", "Next buffer" },
  ["<S-Tab>"] = { "<cmd>bp<cr>", "Previous buffer" },
  ["<leader>"] = {
    b = {
      o = { "<cmd>BufferLineCloseOthers<cr>", "Close other buffers" },
      d = { MiniBufremove.delete, "Delete buffer" },
      c = { MiniBufremove.delete, "Delete buffer" },
      w = { MiniBufremove.wipeout, "Delete buffer" },
    },
  },
})

wk.register({
  name = "Trouble",
  x = {
    x = { "<cmd>Trouble diagnostics toggle<cr>", "Trouble diagnostics" },
    d = { "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", "Trouble document diagnostics" },
  },
}, { prefix = "<leader>" })

wk.register({
  name = "Noice",
  n = {
    d = { "<cmd>NoiceDismiss<cr>", "Dismiss alerts" },
    h = { "<cmd>NoiceHistory<cr>", "Alert history" },
  },
}, { prefix = "<leader>" })

wk.register({
  name = "Copilot",
  c = {
    p = { "<cmd>Copilot panel<cr>", "Copilot panel" },
  },
}, { prefix = "<leader>" })

wk.register({
  name = "TwoslashQueries",
  ["<C-t><C-t>"] = { "<cmd>TwoslashQueriesInspect<cr>", "TwoslashQueries inspect" },
  ["<C-t>"] = { "<cmd>TwoslashQueriesRemove<cr>", "TwoslashQueries remove" },
})
