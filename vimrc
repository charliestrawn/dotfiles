set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/syntastic'
Plug 'klen/python-mode', {'for': 'python'}
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'wookiehangover/jshint.vim'
Plug 'bling/vim-airline'

call plug#end()

filetype plugin indent on
syntax on

let mapleader = ","
imap jj <Esc>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

let g:pymode_rope_goto_definition_bind = '<leader>j'
let g:pymode_rope_rename_bind = '<leader>r'
let g:pymode_options = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_trim_whitespace = 1
let g:pymode_rope = 1
let g:pymode_folding = 0
let g:pymode_lint = 1
let g:pymode_lint_cwindow = 0
let g:pymode_run = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1

nnoremap <leader>w :w<CR>

" Colors
colorscheme brogrammer
set t_Co=256
hi Normal guibg=NONE ctermbg=237
hi NonTest guibg=NONE ctermbg=237

hi CursorLine cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236
hi ColorColumn cterm=NONE ctermbg=236

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp $HOME/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
