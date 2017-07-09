filetype off                  " required
" set the runtime path to include Vundle and initialize
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/AutoClose'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

syntax enable
set t_Co=256
set background=dark
colorscheme molokai

let g:ycm_confirm_extra_conf = 0

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
let g:rehash256 = 1

call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible        " better (why ? ) needed for Vundle
syntax enable           " enable syntax processing
set autoindent      " autoindent on ( added by arjun later)
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
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


 " Quicker window movement
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-h> <C-w>h
 nnoremap <C-l> <C-w>l


 "check out github : tiev/tiev 
 set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

 " Always show statusline
 set laststatus=2
 
map <C-n> :NERDTree<CR>

let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

nnoremap <F5> :!make %:r && ./%:r<CR>

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
 set laststatus=2

