""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins for Neovim (Installed via vim-plug)
" Author: Shravan Doda (https://github.com/shravandoda)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Call to vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" List of plugins installed


" Language Server Protocol Client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ } 

" NCM2 for LSP
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" Echodoc
Plug 'Shougo/echodoc.vim'

" Fuzzy Files
Plug 'junegunn/fzf'

" NERDTree for navigation
Plug 'scrooloose/nerdtree'

" NERDTree Icons
Plug 'ryanoasis/vim-devicons'

" Lightline
Plug 'itchyny/lightline.vim'

" Ayu Colorscheme
Plug 'ayu-theme/ayu-vim'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Startify
Plug 'mhinz/vim-startify'

" NerdCommenter
Plug 'scrooloose/nerdcommenter'

" GutenTags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" GDB Integration
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

" Initialize plugin system
call plug#end() 
