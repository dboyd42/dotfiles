" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let mapleader = '\'
let maplocalleader = "["

" Autocomplete "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete Words
if has("unix")
    imap<C-@> <C-p>
else
    imap <C-Space> <C-p>
endif

" Date - Update Revision Date tag
"     "Note: '/t' flag is needed for Win10
cnoremap updatedate :1,10s/<today's date>/\=system('date +%F')<CR>dd
cnoremap updaterevdate /Revised<CR>o#    <C-r>=system('date +%F')<CR>

" Delete Duplicate Rows
"     "Note: can also use :n,m sort u   // where u = uniq
cnoremap delduprows %s/^\(.*\)\(\n\1\)\+$/\1/

" Edit README.rst in current dir
cnoremap SR split README.rst<CR>

" Make braces auto closing
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
"inoremap ' ''<Left>

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
noremap <S-f> :/<C-r>*<CR>

" Surround Visual-Text  " Makes up for what Vim-Surround is lacking
vnoremap <LocalLeader>** c****<Esc>2hp<Esc>
vnoremap <LocalLeader>*<CR> c**<Esc>hp<Esc>
vnoremap <LocalLeader>" c""<Esc>hp<Esc>
vnoremap <LocalLeader>' c''<Esc>hp<Esc>
vnoremap <LocalLeader>( c()<Esc>hp<Esc>
vnoremap <LocalLeader>[ c[]<Esc>hp<Esc>
vnoremap <LocalLeader>{ c{}<Esc>hp<Esc>

" Directory Browsing (NERDTreeDTreerw, ctags, tagbar) "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap -- :NERDTree<CR>
cnoremap vsb vertical sb
cnoremap vex Vex<CR>

" Display "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statusline (Airline backup)
cnoremap stline set statusline=%F\ %=\ Ln:\%l/%L\ Col:\%c

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

" Disable old keys (no operation)
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

" Jump over braces/string
inoremap <C-l> <Right>
inoremap <C-e> <End>

" Jump up/down a line
inoremap <C-j> <C-W>j
inoremap <C-k> <C-W>k

" Jump vertically by visual line
nnoremap j gj
nnoremap k gk

" Navigating Windows
nnoremap <M-j> <C-W>j
nnoremap <M-k> <C-W>k
nnoremap <M-h> <C-W>h
nnoremap <M-l> <C-W>l

" Search "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off search highligh
"nnoremap <leader><Space> :nohlsearch<CR> " Uncomment for Windows compatability
nnoremap <leader><Space> :nohlsearch<CR>

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

