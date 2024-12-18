vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.mouse = "a"
vim.o.clipboard = "unnamed,unnamedplus"

vim.o.wrap = false

vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = "yes"
vim.o.cursorline = true

vim.o.termguicolors = true

vim.o.splitbelow = true
vim.o.splitright = true

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.prisma",
  callback = function()
    vim.bo.shiftwidth = 4
  end,
})
