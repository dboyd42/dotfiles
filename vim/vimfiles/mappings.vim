" Mappings / Keybindings "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete character on cursor
inoremap <C-d> <Del>
" Insert newline
nnoremap <C-j> o<Esc>k
nnoremap <C-o> O<Esc>j
" Insert today's date
inoremap <leader>d <C-R>=strftime('%Y-%m-%d')<CR>
nnoremap <leader>d <C-R>=strftime('%Y-%m-%d')<CR>
" New Space insert
nnoremap <C-Space> i<Space><Esc>l
" Source VimRC
nnoremap <leader>sv :source $MYVIMRC<CR>

" Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move Prev/Next in Insert Mode
inoremap <C-h> <Esc>i
inoremap <C-l> <Esc>la
" Buffer Prev/Next
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
" Quit all
nnoremap :qq<CR> :qa<CR>

" UI --Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove highlighted matches
nnoremap <leader><Space> :nohl<CR>
" Toggle spell
nnoremap <F7> :setlocal spell! spelllang=en_us<CR>
