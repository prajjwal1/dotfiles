
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/home/prajjwal/vundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'google/vim-colorscheme-primary'
Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
set nocompatible        " better (why ? ) needed for Vundle
syntax enable           " enable syntax processing
set autoindent      " autoindent on ( added by arjun later)
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab
set autoindent
set smartindent       " tabs are spaces
set shiftwidth=4
set number              " show line numbers
set relativenumber	" turn on relative number
set showcmd             " show last command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set showmatch           " highlight matching [{()}]
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   "fold based on indent level 
"space open/closes folds
nnoremap <space> za

" Open new split panes to right and bottom, which feels more natural
 set splitbelow
 set splitright


 " google colours 
 set t_Co=256
 " Quicker window movement
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-h> <C-w>h
 nnoremap <C-l> <C-w>l
