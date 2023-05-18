return {
	"glepnir/lspsaga.nvim",
	event = "LspAttach",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		--Please make sure you install markdown and markdown_inline parser
		{ "nvim-treesitter/nvim-treesitter" },
	},
	keys = {
		{ "gh", "<cmd>Lspsaga lsp_finder<CR>" },
		{ "<leader>ca", "<cmd>Lspsaga code_action<CR>", mode = { "n", "v" } },
		{ "gr", "<cmd>Lspsaga rename<CR>" },
		{ "gR", "<cmd>Lspsaga rename ++project<CR>" },
		{ "gp", "<cmd>Lspsaga peek_definition<CR>" },
		{ "gd", "<cmd>Lspsaga goto_definition<CR>" },
		{ "gt", "<cmd>Lspsaga peek_type_definition<CR>" },
		{ "gT", "<cmd>Lspsaga goto_type_definition<CR>" },
		{ "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>" },
		{ "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>" },
		{ "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>" },
		{ "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>" },
		{ "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>" },
		{ "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>" },
		{ "<leader>o", "<cmd>Lspsaga outline<CR>" },
		{ "K", "<cmd>Lspsaga hover_doc<CR>" },
		-- { "K",          "<cmd>Lspsaga hover_doc ++keep<CR>" },
		{ "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>" },
		{ "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>" },
		{ "<A-d><A-d>", "<cmd>Lspsaga term_toggle<CR>", mode = { "n", "t" } },
		{
			"[E",
			function()
				require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
			end,
		},

		{
			"]E",
			function()
				require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
			end,
		},
	},
	opts = {
		ui = {
			border = "rounded",
		},
	},
	config = true,
}
