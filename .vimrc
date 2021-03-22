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
set copyindent
set shiftround
set showmatch
set scrolloff=15
set nowrap
filetype off


"set ttyfast
set mouse+=a
set t_Co=256

set foldcolumn=3
set ic
set hls is
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader=","

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'preservim/nerdcommenter'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'

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
nnoremap <leader>p :set paste!<CR>
" set pastetoggle=<F10>
set expandtab

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" NERDCommenter Specific
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhiteSpace=1

setlocal foldmethod=expr
set nobackup
set noswapfile

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" highlight search terms, but clear on esc
set hlsearch

" show search matches during typing
set incsearch

set history=1000
set undolevels=1000

"Remove Trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" disable highlighting after search
map <leader>s :noh<CR>

" Switch to absolute numbers when vim loses focus
:au FocusLost * :set number
:au FocusGained * :set relativenumber

" Switch to absolute numbers when going into insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set splitbelow
set splitright

"Switch vim panes by Ctrl-j instead of C-w+j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set list
set listchars=tab:>-
set clipboard=unnamedplus
map <C-n> :NERDTreeToggle<CR>  " Invoke NERDTree with C-n


set display+=lastline
let g:syntastic_python_pylint_post_args="--max-line-length=120"
