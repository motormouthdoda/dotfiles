""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Configuration
" Author: Shravan Doda (https://github.com/shravandoda)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Exit when only NERDTree tab is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
