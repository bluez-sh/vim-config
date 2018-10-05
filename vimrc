execute pathogen#infect()
inoremap jj <Esc>
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>

set rnu
set number
set clipboard+=unnamedplus
syntax on
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent

set hlsearch
set showmatch

filetype on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set colorcolumn=90
