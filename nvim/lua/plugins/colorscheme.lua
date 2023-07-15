return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "frappe",
			transparent_background = true,
		},
		init = function()
			-- vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
		init = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		opts = {
			disable_background = true,
			disable_float_background = true,
		},
		init = function()
			-- vim.cmd("colorscheme rose-pine")
		end,
	},
}
