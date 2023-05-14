return {
  { "windwp/nvim-autopairs",   config = true },
  { "lewis6991/gitsigns.nvim", config = true },
  { "tpope/vim-fugitive" },
  {
    "willothy/moveline.nvim",
    build = "make",
    keys = {
      {
        "<A-k>",
        function()
          require("moveline").up()
        end,
      },
      {
        "<A-j>",
        function()
          require("moveline").down()
        end,
      },
      {
        "<A-k>",
        function()
          require("moveline").block_up()
        end,
        mode = "v",
      },
      {
        "<A-j>",
        function()
          require("moveline").block_down()
        end,
        mode = "v",
      },
    },
  },
}
