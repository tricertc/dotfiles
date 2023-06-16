return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		lazy = false,
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			auto_hide = true,
			sidebar_filetypes = {
				NvimTree = true,
			},
		},
		keys = {
			{ "<A-,>", "<Cmd>BufferPrevious<CR>" },
			{ "<Leader>bp", "<Cmd>BufferPrevious<CR>" },
			{ "<A-.>", "<Cmd>BufferNext<CR>" },
			{ "<Leader>bn", "<Cmd>BufferNext<CR>" },
			{ "<A-<>", "<Cmd>BufferMovePrevious<CR>" },
			{ "<A->>", "<Cmd>BufferMoveNext<CR>" },
			{ "<A-1>", "<Cmd>BufferGoto 1<CR>" },
			{ "<A-2>", "<Cmd>BufferGoto 2<CR>" },
			{ "<A-3>", "<Cmd>BufferGoto 3<CR>" },
			{ "<A-4>", "<Cmd>BufferGoto 4<CR>" },
			{ "<A-5>", "<Cmd>BufferGoto 5<CR>" },
			{ "<A-6>", "<Cmd>BufferGoto 6<CR>" },
			{ "<A-7>", "<Cmd>BufferGoto 7<CR>" },
			{ "<A-8>", "<Cmd>BufferGoto 8<CR>" },
			{ "<A-9>", "<Cmd>BufferGoto 9<CR>" },
			{ "<A-0>", "<Cmd>BufferLast<CR>" },
			{ "<A-p>", "<Cmd>BufferPin<CR>" },
			{ "<A-c>", "<Cmd>BufferClose<CR>" },
			{ "<Leader>bc", "<Cmd>BufferClose<CR>" },
			{ "<A-s-c>", "<Cmd>BufferRestore<CR>" },
		},
		version = "^1.0.0",
	},
}
