" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let mapleader = '\'
let maplocalleader = "["

" Autocomplete "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make braces auto closing
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>

" New line insert
nnoremap <C-j> o<Esc>k
nnoremap <C-o> O<Esc>j
" New Space insert
nnoremap <C-@> i<Space><Esc>l

" Toggle word case-sensitivity
inoremap <C-u> <Esc><C-V>B~Ea
nnoremap <C-u> viW~E
nnoremap <S-u> viw~e

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

" Files "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit MYVIMRC | Source MYVIMRC & Abbreviations
nnoremap <Leader>ev :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>:noh<cr>
nnoremap <Leader>sa :source $VIM/abbreviations.vim<CR>

" :W sudo saves the file
" (useful for handling the permission-denied error)
cnoremap W w !sudo tee % > /dev/null

" Folding "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Space open/closes folds
nnoremap <Space> za

" Misc "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete character on cursor
inoremap <C-d> <Del>

" Disable old keys (no operation)
noremap <Left>  <nop>
noremap <Right> <nop>
noremap <Up>    <nop>
noremap <Down>  <nop>
" Don't close window
noremap <C-z> <nop>

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
nnoremap <leader><Space> :nohlsearch<CR>

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

