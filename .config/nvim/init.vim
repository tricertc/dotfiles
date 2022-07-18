call plug#begin("~/.config/nvim/plugged")
  Plug 'sainnhe/edge'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'prettier/vim-prettier'
  Plug 'kien/ctrlp.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

"
" Editor Settings
"
set number
set mouse=a
set noswapfile

"
" Whitespace
"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smarttab

"
" Color Theme
"
if has('termguicolors')
  set termguicolors
endif

set background=dark
colorscheme edge

"
" Key Mappings
"
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>sf :e ~/.config/nvim/init.vim<CR>

"
" NERDTree Config
"
nmap <C-n> :NERDTreeFocus<CR>
nmap <C-t> :NERDTreeToggle<CR>

"
" Airline Settings
"
let g:airline_powerline_fonts = 1

"
" Ctrl-P Settings
"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"
" Telescope Config
"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules/*" }
  }
}
EOF

runtime coc.vim
