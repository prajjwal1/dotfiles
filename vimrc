set background=dark
syntax on
set shortmess+=I
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
set noerrorbells visualbell t_yb=
set nocompatible
set autoindent
set complete-=i
set smarttab
set ruler
set wildmenu
set autoread
set cursorline
filetype off


"set ttyfast
set mouse+=a
set t_Co=256

set foldcolumn=3
set ic
set hls is
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'preservim/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'psf/black'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required

filetype plugin indent on
let g:SimplyFold_docstring_preview=1
let python_highlight_all=1
syntax on
set encoding=UTF-8
set pastetoggle=<F10>
set expandtab
let mapleader=","

setlocal foldmethod=expr

set list
set listchars=tab:>-
set clipboard=unnamedplus
map <C-n> :NERDTreeToggle<CR>  " Invoke NERDTree with C-n

let g:molokai_original=1

colorscheme OceanicNext
let g:airline_theme='oceanicnext' 

set display+=lastline
autocmd BufWritePre *.py execute ':Black'
