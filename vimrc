execute pathogen#infect()

inoremap jj <Esc>
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
nnoremap <silent> <leader>/ :nohlsearch<Bar>:echo<CR>
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

set splitbelow
set splitright

filetype on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set colorcolumn=90

set foldmethod=syntax
set foldlevelstart=20

" Command-T
set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>

" NerdTree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store','\~$','\.swp']

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Lightline
set laststatus=2

" NerdCommenter 
filetype plugin on
