return {
	{ "windwp/nvim-autopairs", config = true },
	{ "windwp/nvim-ts-autotag" },
	{ "lewis6991/gitsigns.nvim", config = true },
	{ "tpope/vim-fugitive" },
	{
		"willothy/moveline.nvim",
		build = "make",
		keys = {
			{
				"<S-A-k>",
				function()
					require("moveline").up()
				end,
			},
			{
				"<S-A-j>",
				function()
					require("moveline").down()
				end,
			},
			{
				"<S-A-k>",
				function()
					require("moveline").block_up()
				end,
				mode = "v",
			},
			{
				"<S-A-j>",
				function()
					require("moveline").block_down()
				end,
				mode = "v",
			},
		},
	},
	{
		"danymat/neogen",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		keys = {
			{
				"<leader>nf",
				function()
					require("neogen").generate({})
				end,
			},
		},
		config = true,
	},
	{
		"andymass/vim-matchup",
	},
}
