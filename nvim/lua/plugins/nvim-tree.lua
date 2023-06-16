return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>" },
			{ "<leader>fe", "<cmd>NvimTreeFindFile<cr>" },
		},
		opts = {
			diagnostics = {
				enable = true,
			},
			renderer = {
				group_empty = false,
        highlight_opened_files = "name",
			},
			view = {
				cursorline = true,
				width = {
					min = 30,
					max = "50%",
				},
				side = "left",
			},
			filters = {
				exclude = {
					".env",
				},
			},
			on_attach = function(bufnr)
				local api = require("nvim-tree.api")
				api.config.mappings.default_on_attach(bufnr)
			end,
		},
		config = true,
	},
}
