s<a href="https://github.com/prajjwal1/fluence/wiki"><img alt="Documentation Status" src="https://readthedocs.org/projects/fairseq/badge/?version=latest" /></a></a>yntax on
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
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'psf/black'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'preservim/nerdcommenter'
Plugin 'morhetz/gruvbox'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()            " required

" Gruvbox specific
autocmd vimenter * colorscheme gruvbox 
set background=dark

filetype plugin indent on
let g:SimplyFold_docstring_preview=1
let python_highlight_all=1
syntax on
set encoding=UTF-8
" set paste/no-paste
set pastetoggle=<F10>
set expandtab
let mapleader=","

" NERDCommenter Specific
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhiteSpace=1

"Vim fugitive
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>

setlocal foldmethod=expr

set list
set listchars=tab:>-
set clipboard=unnamedplus
map <C-n> :NERDTreeToggle<CR>  " Invoke NERDTree with C-n


set display+=lastline
autocmd BufWritePre *.py execute ':Black'
