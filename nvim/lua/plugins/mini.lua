return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.move").setup()
      require("mini.comment").setup()
      -- require("mini.pairs").setup()
      require("mini.bufremove").setup()
    end,
  },
}
