execute pathogen#infect()

"inoremap jj <Esc>
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
nnoremap <silent> <leader>/ :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>

"vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> mz:-1r !xclip -o -sel clip<CR>`z

autocmd filetype cpp nnoremap <C-c> :w <bar> !clear && g++ -std=c++11 % -Wall && ./a.out<CR>
autocmd filetype c nnoremap <C-c> :w <bar> !clear && gcc % -Wall && ./a.out<CR>
autocmd filetype java nnoremap <C-c> :w <bar> !clear && java %<CR>
autocmd filetype lex nnoremap <C-c> :w <bar> !clear && lex % && gcc lex.yy.c -Wall && ./a.out<CR>
autocmd filetype ada nnoremap <C-c> :w <bar> !clear && gnatgcc -o % && ./a.out<CR>
autocmd filetype tex nnoremap <C-c> :w <bar> !clear && rubber -d %<CR>
au BufRead,BufNewFile *.md setlocal textwidth=80

command! MakeTags !ctags -R .

set rnu
set number
set clipboard^=unnamedplus
set hidden
set history=100
set nocompatible
syntax on

set cindent
set expandtab
"set cinoptions=(0
"autocmd FileType make,automake set noexpandtab shiftwidth=8 softtabstop=8
"highlight ForbiddenWhitespace ctermbg=red guibg=red
"match ForbiddenWhitespace /\s\+$\|\t/
"autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@@<!$/

filetype indent on
set nowrap
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set smartindent
set autoindent

set hlsearch
set showmatch
set incsearch
nnoremap <leader>w /\s\+$<CR>

set splitbelow
set splitright

filetype on
colorscheme snazzy
highlight Normal guibg=NONE ctermbg=NONE

set guifont=Menlo\ Regular:h18
"set guifont=Courier\ New:s11
set colorcolumn=80

set foldmethod=syntax
set foldlevelstart=20

" Autoclose Script
" Toggle with <Leader>a

" My Snippets
nnoremap ,cpp :-1read $HOME/.vim/.snip_default.cpp<CR>3jo
nnoremap ,cpcpp :-1read $HOME/.vim/.snip_cp.cpp<CR>4jo
nnoremap ,java :-1read $HOME/.vim/.snip_jv.java<CR>3e

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
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_2.py"
let g:ycm_enable_diagnostic_signs = 0

let g:ycm_enable_diagnostic_highlighting = 0

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

" Lightline
set laststatus=2

" NerdCommenter
filetype plugin on

" ALE
let g:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0

let g:ale_linters = { 'c++': ['clang++'], 'c': ['clang'], 'java': ['javac'], }
let g:ale_linters_explicit = 1

map <leader>T :ALEToggle<CR>
