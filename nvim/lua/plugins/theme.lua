return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {},
    init = function()
      vim.cmd("colorscheme tokyonight-moon")
    end,
  },
  {
    "shaunsingh/nord.nvim",
    enabled = false,
    init = function()
      vim.cmd("colorscheme nord")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
      styles = {
        transparency = true,
      },
    },
    init = function()
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
    init = function()
      vim.cmd("colorscheme catppuccin")
    end,
  },
}
