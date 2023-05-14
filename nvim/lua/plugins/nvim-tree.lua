return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    keys = {
      { "<leader>e",  "<cmd>NvimTreeToggle<cr>" },
      { "<leader>fe", "<cmd>NvimTreeFindFile<cr>" },
    },
    opts = {
      renderer = {
        group_empty = false,
      },
      view = {
        width = 40,
        side = "left",
      },
    },
    config = true,
  },
}
