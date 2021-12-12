set nocompatible
let mapleader = ","
syntax on
filetype plugin indent on
colorscheme slate
set hlsearch
set linebreak
set mouse=a
set number
set autoindent smartindent
set ts=4 sw=4
set completeopt=menu,menuone,longest,noinsert
set foldmethod=syntax
set clipboard+=unnamed
set encoding=utf-8
set wildmenu
set wildmode=list:longest
set hidden
set nobackup
set nowritebackup
set title
set cmdheight=1
set updatetime=300
set laststatus=2 "for lightline plugin
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"my stupid maps
nmap <C-t> <C-o>
nmap  <esc>:nohls<cr>

