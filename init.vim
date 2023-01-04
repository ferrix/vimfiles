set relativenumber
set autoindent
set vb
set nocompatible
let g:mapleader=" "

call plug#begin('~/.vim/vendor')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-rhubarb'

call plug#end()

set guifont=Comic\ Code\ Light:h12
colorscheme neverland2
