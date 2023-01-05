set relativenumber
set autoindent
set vb
set nocompatible
let g:mapleader=","
set colorcolumn=80,100

call plug#begin('~/.vim/vendor')

if !has('nvim') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'terryma/vim-multiple-cursors'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jayp0521/mason-nvim-dap.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()

nnoremap <leader><tab> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

set guifont=Comic\ Code\ Light:h12
colorscheme spacecamp

set completeopt-=preview

if has('nvim')
  lua require'lspconfig'
endif
