"""""""""""""""""""""""""""""
" Shravan's Vim Configuration
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Vundle Configuration
"""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'altercation/vim-colors-solarized' "ColorScheme
Plugin 'junegunn/fzf.vim' "fzf
Plugin 'vim-airline/vim-airline' "Airline
Plugin 'vim-airline/vim-airline-themes' "Airline Themes
Plugin 'ajh17/VimCompletesMe' "TabCompletion
Plugin 'scrooloose/nerdtree' "NERDTree
Plugin 'mattn/emmet-vim' "emmet
Plugin 'tpope/vim-fugitive' "git integration
Plugin 'vim-syntastic/syntastic' "Syntastic for syntax-checking
Plugin 'plytophogy/vim-virtualenv' "Virtual Environment for Python
Plugin 'ryanoasis/vim-devicons' "Icons for NERDTree
Plugin 'davidhalter/jedi-vim' "Jedi for python completion

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""
" UI Configuration
"""""""""""""""""""""""""""""

"General
set number
set showmatch
set textwidth=79
set cursorline
set laststatus=2
set mouse=a

set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set expandtab

set ruler
set undolevels=1000
set backspace=indent,eol,start

let python_highlight_all=1

"Solarized Configuration
syntax enable
colorscheme solarized
set background=dark
let g:solarized_termcolors=256

"Split Configuration
set splitbelow
set splitright

"Fold Settings
set foldmethod=indent
set foldlevel=99
"""""""""""""""""""""""""""""
" KeyBindings
"""""""""""""""""""""""""""""

"Changing leader
let mapleader = ','

"Search mapping correction
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]

nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]

"Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Folding with spacebar
nnoremap <space> za
"""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""

map <leader>f :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
