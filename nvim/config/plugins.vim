""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins for Neovim (Installed via vim-plug)
" Author: Shravan Bharat Doda (https://github.com/motormouthdoda)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Call to vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" List of plugins installed

" LanguageClient for Neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Fuzzy Files
Plug 'junegunn/fzf'

" Deoplete completion engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Echodoc
Plug 'Shougo/echodoc.vim'

" NERDTree for navigation
Plug 'scrooloose/nerdtree'

" NERDTree Icons
Plug 'ryanoasis/vim-devicons'

" Lightline
Plug 'itchyny/lightline.vim'


" Syntax Highlighting for C/C++
Plug 'justinmk/vim-syntax-extra'

" Monokai Theme
Plug 'chriskempson/base16-vim'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Startify
Plug 'mhinz/vim-startify'

" Initialize plugin system
call plug#end() 
