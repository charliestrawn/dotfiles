
set nocompatible

if !isdirectory(expand('~/.vim/undo/', 1))
	silent call mkdir(expand('~/.vim/undo')), 'p')
endif

if !isdirectory(expand('~/.vim/backup/', 1))
	silent call mkdir(expand('~/.vim/backup')), 'p')
endif

if !isdirectory(expand('~/.vim/swap/', 1))
	silent call mkdir(expand('~/.vim/swap')), 'p')
endif

filetype off

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', {'as':'dracula'}
Plug 'cj/vim-webdevicons'
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
call plug#end()
filetype plugin indent on
silent colorscheme dracula
syntax on
let g:deoplete#enable_at_startup = 1
let mapleader = ","
imap jj <Esc>
map <C-c> "*y

set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set autoindent
set autowrite
set backspace=2
set backup
set backupdir=~/.vim/backup/
set cursorline
set directory=~/.vim/swap/
set expandtab
set history=1000
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set number
set pastetoggle=<F10>
set ruler
set shiftround
set shiftwidth=4
set showcmd
set softtabstop=4
set tabstop=4
set termguicolors
set undofile
set undodir=~/.vim/undo/
set wildignore+=*.pyc,*.egg-info

" window splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" NERDTree
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize = 32
let g:NERDTreeMinimalUI = 1
" let g:NERDTreeArrows = 1

