return {
	{
		"github/copilot.vim",
		config = function()
			vim.cmd([[
        imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true
        let g:copilot_filetypes = { 'yaml': v:true }
      ]])
		end,
	},
}
