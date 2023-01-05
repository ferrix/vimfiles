set relativenumber
set autoindent
set vb
set nocompatible
let g:mapleader=","
set colorcolumn=80,100

call plug#begin('~/.vim/vendor')

if !has('nvim') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion' "" Opinionated configuration TODO assimilate
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "" Fuzzy finder
Plug 'dense-analysis/ale' "" Asynchronous Lint Engine
Plug 'sheerun/vim-polyglot' "" Language pack
Plug 'tpope/vim-sleuth' "" Tab and space detection
Plug 'tpope/vim-fugitive' "" Git integration
Plug 'tpope/vim-rhubarb' "" Git browser
Plug 'tpope/vim-surround' "" Parenthesis, quotes, etc
Plug 'preservim/nerdtree' "" File tree
Plug 'preservim/tagbar' "" Tag list bar
Plug 'rafi/awesome-vim-colorschemes' "" Color
Plug 'ap/vim-css-color' "" CSS color preview
Plug 'vim-airline/vim-airline' "" Statusbar
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal' "" Terminal integration
Plug 'terryma/vim-multiple-cursors'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jayp0521/mason-nvim-dap.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()

nnoremap <leader><tab> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

set guifont=ComicCode\ Light\ NFM:h12
colorscheme spacecamp

set completeopt-=preview

if has('nvim')
  lua require'lspconfig'
endif
