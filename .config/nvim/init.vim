call plug#begin("~/.config/nvim/plugged")
 Plug 'preservim/nerdtree'
 Plug 'neoclide/coc.nvim', { 'branch': 'release' }
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'kien/ctrlp.vim'
 Plug 'arcticicestudio/nord-vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'pangloss/vim-javascript'
 Plug 'yuezk/vim-js'
 Plug 'HerringtonDarkholme/yats.vim'
 Plug 'maxmellon/vim-jsx-pretty'
 Plug 'jiangmiao/auto-pairs'
call plug#end()

set number
set mouse=a

set noswapfile

" Whitespace
"
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set smarttab

" Color Scheme
"
if has('termguicolors')
  set termguicolors
endif

let g:airline_theme = 'nord'
let g:airline_powerline_ofnts = 1

colorscheme nord

" Custom Key Mappings
"
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

nmap <C-t> :NERDTreeToggle<CR>
nmap <C-n> :NERDTreeFocus<CR>

" Plugin Configuration
"
let NERDTreeCascadeSingleChildDir=0

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:coc_global_extensions = [
      \ "coc-json",
      \ "coc-tsserver"
      \]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
