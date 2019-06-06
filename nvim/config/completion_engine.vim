""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete Configuration
" Author: Shravan Bharat Doda (https://github.com/motormouthdoda)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" Enable echodoc
let g:echodoc#enable_at_startup = 1

set hidden
let g:LanguageClient_serverCommands = {
    \ 'python': ['/usr/bin/pyls'],
    \ 'cpp': ['/usr/bin/clangd']
    \ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

