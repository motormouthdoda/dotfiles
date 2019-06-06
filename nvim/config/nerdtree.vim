""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Configuration
" Author: Shravan Bharat Doda (https://github.com/motormouthdoda)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Exit when only NERDTree tab is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
