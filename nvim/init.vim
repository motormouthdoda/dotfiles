""""""""""""""""""""""""""""""""""""""""
" Shravan's NVIM Configuration
""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""
" Setting up Vim Plug
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes
Plug 'ncm2/ncm2'  " NCM2
Plug 'roxma/nvim-yarp' " NCM2 dependency
Plug 'HansPinckaers/ncm2-jedi' " NCM2 support for Jedi
Plug 'ncm2/ncm2-bufword' " NCM2 dependency
Plug 'ncm2/ncm2-path' " NCM2 dependency
Plug 'davidhalter/jedi-vim' " Jedi for Python
Plug 'tweekmonster/impsort.vim' " Import statement sorter
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy Files Search
Plug 'junegunn/fzf.vim' " Fuzzy Files Search for NVIM
Plug 'itchyny/lightline.vim' " Lighline
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'jiangmiao/auto-pairs' " Auto Pairs
Plug 'tpope/vim-fugitive' " Git Integration with fugitive
Plug 'Yggdroot/indentLine' " Line-Indent marks for better view
Plug 'ryanoasis/vim-devicons' " Icons for NERDtree
Plug 'airblade/vim-gitgutter' " Git Gutter
Plug 'neomake/neomake' " Linter
Plug 'tomtom/tcomment_vim' " Commenter
Plug 'terryma/vim-multiple-cursors' " Multiple Cursor Selection
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NERDTree Syntax Highlighting
Plug 'crusoexia/vim-monokai' " Monokai Theme 
Plug 'plytophogy/vim-virtualenv' " VirtualEnv Handler for Python 
Plug 'xolox/vim-notes' " Vim Notes taking Plugin
Plug 'xolox/vim-misc' " Vim Notes dependency
" Initialize plugin system
call plug#end() 


""""""""""""""""""""""""""""""""""""""""
" Package Configuration
""""""""""""""""""""""""""""""""""""""""
" NCM2 Configuration
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
let g:ncm2#matcher = 'substrfuzzy'

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
let g:jedi#show_call_signatures_modes = 'i'  " ni = also in normal mode
let g:jedi#enable_speed_debugging=0 
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#usage_command = "<leader><F6>"
let g:jedi#rename_command = "<leader>r"

"NERDTree Configuration
map <leader>f :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
call neomake#configure#automake('nrwi', 200)
let g:neomake_python_enabled_makers = ['pylint', 'flake8']

" NERDTree Fonts Configuration
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1


" Vim Notes Configuration
let g:notes_directories = ['~/Personal/Notes']

""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""
let g:python3_host_prog = '/usr/bin/python'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set encoding=utf-8
set splitright
set splitbelow
set tw=79
colorscheme monokai 
syntax enable
set cursorline
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
noremap <silent> j gj
noremap <silent> k gk
