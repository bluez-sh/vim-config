execute pathogen#infect()

inoremap jj <Esc>
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
nnoremap <silent> <leader>/ :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

autocmd filetype cpp nnoremap <C-c> :w <bar> !clear && g++ -std=c++11 % -Wall && ./a.out<CR>
autocmd filetype c nnoremap <C-c> :w <bar> !clear && gcc % -Wall && ./a.out<CR>

command! MakeTags !ctags -R .

set rnu
set number
set clipboard^=unnamedplus
set hidden
set history=100
set nocompatible
syntax on

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
colorscheme Tomorrow

set guifont=Menlo\ Regular:h18
set colorcolumn=80

set foldmethod=syntax
set foldlevelstart=20

" Backup System
set backup
set backupdir=~/.vim/backup//
set writebackup
set backupcopy=yes
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

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
let g:ycm_enable_diagnostic_signs = 0

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

" Lightline
set laststatus=2

" NerdCommenter 
filetype plugin on


