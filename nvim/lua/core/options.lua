vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

opt.number = true
opt.relativenumber = true
opt.numberwidth = 5

opt.signcolumn = "yes"
opt.cursorline = true

opt.termguicolors = true

opt.mouse = "a"
opt.clipboard = "unnamed,unnamedplus"

opt.backspace = "indent,eol,start"

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true
opt.iskeyword:append("-")

opt.splitright = true
opt.splitbelow = true

vim.cmd([[
  set t_ZH=^[[3m
  set t_ZR=^[[23m
]])
