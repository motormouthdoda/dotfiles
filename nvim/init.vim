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
Plug 'morhetz/gruvbox' " Gruvbox

" Initialize plugin system
call plug#end()



""""""""""""""""""""""""""""""""""""""""
" Package Configuration
""""""""""""""""""""""""""""""""""""""""
" deoplete Configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" NERDTree Configuration
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ale Configuration
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let g:ale_sign_error = 'X'

" Spacemacs Theme Configuration

" Lightline Configuration
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


" Linter Configuration
call neomake#configure#automake('nrwi', 500)
let g:neomake_python_enabled_makers = ['pylint', 'flake8']



""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set encoding=utf-8
set splitright
set splitbelow
set tw=79
colorscheme gruvbox
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
set termguicolors



""""""""""""""""""""""""""""""""""""""""
" Personal Keybindings
""""""""""""""""""""""""""""""""""""""""
let mapleader=','
map <leader>n :NERDTreeToggle<CR>
