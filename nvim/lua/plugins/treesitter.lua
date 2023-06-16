return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
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
