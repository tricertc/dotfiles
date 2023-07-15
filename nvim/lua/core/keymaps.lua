vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if not opts ~= nil then
		options = vim.tbl_deep_extend("force", options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
end

local function nmap(lhs, rhs, opts)
	map("n", lhs, rhs, opts or {})
end

nmap("<leader>q", "<cmd>q<cr>")
nmap("<leader>Q", "<cmd>q!<cr>")

nmap("<leader>w", "<cmd>w<cr>")
nmap("<leader>W", "<cmd>w!<cr>")

nmap("<leader>bp", "<cmd>bprevious<cr>")
nmap("<leader>bn", "<cmd>bnnext<cr>")
nmap("<leader>bd", "<cmd>bdelete<cr>")

nmap("<C-a>", "ggVG")
