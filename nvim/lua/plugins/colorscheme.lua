return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	opts = {
		flavour = "frappe",
		transparent_background = true,
	},
	init = function()
		vim.cmd("colorscheme catppuccin")
	end,
}
