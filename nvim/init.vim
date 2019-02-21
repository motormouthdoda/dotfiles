""""""""""""""""""""""""""""""""""""""""
" Shravan's NVIM Configuration
""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""
" Setting up Vim Plug
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "deoplete engine for auto-completion
Plug 'zchee/deoplete-jedi' "deoplete-jedi for python-autocompletion
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "fzf dependency
Plug 'junegunn/fzf.vim' "fzf.vim package
Plug 'itchyny/lightline.vim' "lighline plugin
Plug 'scrooloose/nerdtree' "NERDTree
Plug 'w0rp/ale' "Ale for linting
Plug 'altercation/vim-colors-solarized' "solarized colorscheme
Plug 'liuchengxu/space-vim-dark' "spacemacs-dark theme
Plug 'idanarye/vim-vebugger' "Debugger
Plug 'Shougo/vimproc.vim', {'do' : 'make'} "Debugger dependency
Plug 'jiangmiao/auto-pairs' "Auto Pairs
Plug 'tpope/vim-fugitive' " Git Integration with fugitive
Plug 'Yggdroot/indentLine' " Line-Indent marks for better view
Plug 'ryanoasis/vim-devicons' " Icons for nerdtree
Plug 'airblade/vim-gitgutter' " Git Gutter
Plug 'neomake/neomake' " Linter
Plug 'tomtom/tcomment_vim' " Commenter
Plug 'terryma/vim-multiple-cursors' " Multiple Cursor Selection

" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""""""""""
" Package Configuration
""""""""""""""""""""""""""""""""""""""""
" deoplete Configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" NERDTree Configuration
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ale Configuration
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let g:ale_sign_error = 'X'

" Spacemacs Theme Configuration
let g:space_vim_dark_background = 234
hi Comment guifg=#5C6370 ctermfg=59

" Lightline Configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


" Linter Configuration
call neomake#configure#automake('w')


""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set encoding=utf-8
set splitright
set splitbelow
set tw=79
colorscheme space-vim-dark
syntax enable
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent
filetype indent plugin on
let python_highlight_all=1
set number
set ruler 


""""""""""""""""""""""""""""""""""""""""
" Personal Keybindings
""""""""""""""""""""""""""""""""""""""""
let mapleader=','
map <leader>n :NERDTreeToggle<CR>
