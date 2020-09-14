" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let mapleader = '\'
let maplocalleader = "["

" Autocomplete "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Command Mode
""""""""""""""""""""""""""""""""""""""""

" Delete Duplicate Rows
"     "Note: can also use :n,m sort u   // where u = uniq
cnoremap delduprows %s/^\(.*\)\(\n\1\)\+$/\1/

" Insert Mode
""""""""""""""""""""""""""""""""""""""""

" Autocomplete Words
if has("unix")
    imap<C-@> <C-p>
else
    imap <C-Space> <C-p>
endif

" Make braces auto closing
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
"inoremap ' ''<Left>

" Normal Mode
""""""""""""""""""""""""""""""""""""""""

" New line insert
nnoremap <C-j> o<Esc>k
nnoremap <C-o> O<Esc>j

" New Space insert
if has ("unix")
    nnoremap <C-@> i<Space><Esc>l
else
    nnoremap <C-Space> i<Space><Esc>l
endif

" Searching from System Clipboard
    " Replaces 'S' -> substitute line
noremap <Leader>f :/<C-r>*<CR>

" Files "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit MYVIMRC | Source MYVIMRC & Abbreviations
nnoremap <Leader>ev :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>:noh<cr>
nnoremap <Leader>sa :source $VIM/abbreviations.vim<CR>

" :W sudo saves the file
" (useful for handling the permission-denied error)
cnoremap SUDOWRITE w !sudo tee % > /dev/null


" Folding "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Space open/closes folds
if has("unix")
    nnoremap <@> za
else
    nnoremap <Space> za
endif

" Misc "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete character on cursor
inoremap <C-d> <Del>

" Disable arrow keys (no operation)
noremap <Left>  <nop>
noremap <Right> <nop>
noremap <Up>    <nop>
noremap <Down>  <nop>

" Toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Toggle spell
nnoremap <F7> :setlocal spell! spelllang=en_us<CR>

" Navigating "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Buffers
nnoremap <C-l> :bn<CR>
nnoremap <C-k> :b#<CR>
nnoremap <C-h> :bp<CR>

" Search "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off search highligh
nnoremap <leader><Space> :nohl<CR>

