" Mappings / Keybindings "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert today's date
inoremap <leader>d <C-R>=strftime('%Y-%m-%d')<CR>
nnoremap <leader>d <C-R>=strftime('%Y-%m-%d')<CR>
" Source VimRC
nnoremap <leader>sv :source $MYVIMRC<CR>

" Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer Prev/Next
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>

" UI --Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove highlighted matches
nnoremap <leader><Space> :nohl<CR>

