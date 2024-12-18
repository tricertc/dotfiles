return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
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
    enabled = false,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
    init = function()
      vim.cmd("colorscheme catppuccin")
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    enabled = false,
    opts = {
      colorscheme = "dracula",
      transparent_bg = true,
    },
    init = function()
      vim.cmd("colorscheme dracula")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    enabled = false,
    opts = {
      transparent = false,
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
    init = function()
      vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
      options = {
        transparent = true,
      },
    },
    init = function()
      vim.cmd("colorscheme github_dark")
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
      options = {
        transparent = true,
      },
    },
    init = function()
      vim.cmd("colorscheme carbonfox")
    end,
  },
}
