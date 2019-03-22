"*******************************************************************************
"" Shravan's NVIM Configuration
"*******************************************************************************



"*******************************************************************************
"" Setting up Vim Plug 
"*******************************************************************************
" Required:
call plug#begin('~/.local/share/nvim/plugged') 
"*******************************************************************************
"" Plug Install Packages
"*******************************************************************************
Plug 'ncm2/ncm2' 
Plug 'roxma/nvim-yarp'
Plug 'HansPinckaers/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'davidhalter/jedi-vim'
Plug 'w0rp/ale'
Plug 'tweekmonster/impsort.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
" Initialize plugin system
call plug#end() 


"******************************************************************************
"" Personal Keybindings
"******************************************************************************
" Map Leader Key to ','
let mapleader=','

" Correct Line Movements
noremap <silent> j gj
noremap <silent> k gk

" Easy Split Movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Map NERDTree Toggle
map <leader>f :NERDTreeToggle<CR>

" Happy Shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"******************************************************************************
" General Configuration
"******************************************************************************
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" File Settings
set fileformat=unix
filetype indent plugin on

" Tab Settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Split Settings
set splitright
set splitbelow

" Appearance Settings
syntax enable

" Cursor Settings
set cursorline

" Python Specific Settings
set autoindent
let python_highlight_all=1
let g:python3_host_prog = '/usr/bin/python'

" No swap files
set nobackup
set noswapfile

" Mouse and Scroll Settings
set mouse=a 
set scrolloff=3


"******************************************************************************
"" Visual Settings
"******************************************************************************
syntax on
set ruler
set number

set t_Co=256
set termguicolors
set background=dark
colorscheme gruvbox

" vim-airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1


"******************************************************************************
" Package Configuration
"******************************************************************************
" NCM2 Configuration
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
let g:ncm2#matcher = 'substrfuzzy'
inoremap <c-c> <ESC>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Jedi Configuration
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1" 
let g:jedi#show_call_signatures_delay = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#show_call_signatures_modes = 'ni'
let g:jedi#enable_speed_debugging=0 
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"

" Ale Configuration
let g:ale_linters = {
  \ 'python': ['flake8'] ,
  \ }
let g:ale_sign_error = '✕'
let g:ale_sign_warning = '⚠'

" NERDTree Configuration
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
