return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"typescript",
				"tsx",
				"json",
				"css",
				"markdown",
				"markdown_inline",
				"prisma",
				"http",
			},
			autotag = { enable = true },
			highlight = { enable = true },
			indent = { enable = true },
			matchup = { enable = true },
		})
	end,
}
