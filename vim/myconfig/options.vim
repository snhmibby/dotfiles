set nocompatible
syntax on
filetype plugin indent on
set bg=dark
set hlsearch
set linebreak
set ttymouse=sgr "for alacritty
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
let mapleader = ","

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Recently vim can merge signcolumn and number column into one
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

"go back in generic jump list instead of tag-list
nmap <C-t> <C-o>

"remove search highlighting with <C-/> (doesn't work like <C-/> :S)
nmap  <esc>:nohls<cr>

"repeat last command:
nmap <C-c> :OA<cr>

