"        _
" __   _(_)_ __ ___  _ __ ____
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimental
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
"http://majutsushi.github.io/tagbar/
"nnoremap <F8> :TagbarToggle<CR>
"Plugin 'tpope/vim-vinegar'          " Redraws netrw as 'project drawers'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins --Vundle configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " Compatible makes Vim 99% compatible w/ vi
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path to vundle
call vundle#begin()                 " required
Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'SirVer/ultisnips'           " Snippets
Plugin 'ctrlpvim/ctrlp.vim'         " Full path fuzzy file finder
Plugin 'dhruvasagar/vim-table-mode' " rst table mode
Plugin 'scrooloose/nerdtree'        " File system explorer
Plugin 'sjl/gundo.vim'              " Visualize your Vim undo tree
Plugin 'flazz/vim-colorschemes'     " additional colorschemes
Plugin 'terryma/vim-multiple-cursors' " edit multiple loc synchronously
Plugin 'tpope/vim-fugitive'         " Git wrapper
Plugin 'tpope/vim-surround'         " mappings for surrounding pairs
Plugin 'vim-airline/vim-airline'    " statusline
Plugin 'vim-airline/vim-airline-themes'    " statusline-themes
Plugin 'w0rp/ale'                   " Asynchronous Lint Engine
call vundle#end()                   " required
filetype plugin indent on           " required

" Settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make Gundo work with Python 3
if has ('python3')
    let g:gundo_prefer_python3 = 1
endif

" Show hidden files
let NERDTreeShowHidden=1
let g:ctrlp_show_hidden=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sources
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIM/abbrev/abbreviations.vim
source $VIMRUNTIME/menu.vim
function! LoadTemplate(extension)
    silent! :execute '0r $VIM/templates/'. a:extension. '.tpl'
    silent! execute 'source $VIM/templates/'.a:extension.'.patterns.tpl'
endfunction
autocmd BufNewFile * silent! call LoadTemplate('%:e')
"au BufNewFile * silent! 0r $VIM/templates/%:e.tpl

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands (automcd || au)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FileType "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype_all
    au!
    " Show Tablines
    au BufRead,InsertLeave * match TabLine /[\t]/
    " Deletes all trailing whitepsace on save
    au BufWritePre * %s/\s\+$//e
    " Make gf work for a URL.  I.e.) file:///C:/myfile.txt
    au BufReadCmd file:///* exe "bd!|edit ".substitute(expand("<afile>"),"file:/*","","")
augroup END

augroup filetype_cpp
    au!
    au FileType cpp noremap <buffer> <LocalLeader>c I// <Esc>
    au FileType cpp noremap <buffer> <LocalLeader>u 03x<Esc>
augroup END

augroup filetype_css
    au!
    au FileType css noremap <buffer> <LocalLeader>c ^i/* <Esc><S-a> */<Esc>
    au FileType css noremap <buffer> <LocalLeader>u ^3x<end>xxx
augroup END

augroup filetype_javascript
    au!
    au FileType javascript noremap <buffer> <LocalLeader>c I//<Esc>
    au FileType javascript noremap <buffer> <LocalLeader>u 02x<Esc>
augroup END

augroup filetype_html
    au!
    au BufRead,BufNewFile *.html setlocal shiftwidth=2 softtabstop=2
    " Indent Files
    au BufWritePre,BufRead *.html normal gg=G
    au FileType html noremap <buffer> <LocalLeader>c I<!--<Esc><S-a>--><esc>
    au FileType html noremap <buffer> <LocalLeader>u ^4x<end>xxx
    au FileType html inoremap <strong> <strong></strong><Esc>%i
    au FileType html inoremap <em> <em></em><Esc>%i
    au FileType html inoremap <h1> <h1></h1><Esc>%i
    au FileType html inoremap <h2> <h2></h2><Esc>%i
    au FileType html inoremap <h3> <h3></h3><Esc>%i
    au FileType html inoremap <h4> <h4></h4><Esc>%i
    au FileType html inoremap <h5> <h5></h5><Esc>%i
    au FileType html inoremap <h6> <h6></h6><Esc>%i
    au FileType html inoremap <p> <p></p><Esc>%i
    au FileType html inoremap <a <a<Space>href="" alt=""></a><Esc>3hi
    au FileType html inoremap <img<SPACE> <img src="" alt="">
    au FileType html inoremap <ul> <ul><CR><li></li><CR></ul><Esc>k2f<i
    au FileType html inoremap <li> <li></li><Esc>%i
    au FileType html inoremap <ol> <ol><CR><li></li><CR></ol><Esc>k2f<i
    au FileType html inoremap <table> <table><CR></table><Esc>k<S-a><CR>
    au FileType html inoremap <thead> <thead><CR></thead><Esc>k<S-a><CR>
    au FileType html inoremap <tbody> <tbody><CR></tbody><Esc>k<S-a><CR>
    au FileType html inoremap <tr> <tr><CR></tr><Esc>k<S-a><CR>
    au FileType html inoremap <th> <th></th><Esc>%i
    au FileType html inoremap <td> <td></td><Esc>%i
augroup END

augroup filetype_python
    au!
    " Indent Files
    "au BufWritePre,BufRead *.py normal gg=G
    au FileType python noremap <buffer> <LocalLeader>c I#<Esc>
    au FileType python noremap <buffer> <LocalLeader>u 0x<Esc>
augroup END

augroup filetype_rst
    au!
    au BufRead,BufNewFile *.rst setlocal noet tw=0 wm=0
    au FileType rst noremap <buffer> <LocalLeader>c I.. <Esc>
    au FileType rst noremap <buffer> <LocalLeader>u 03x<Esc>
augroup END

augroup filetype_vim
    au!
    au FileType vim noremap <buffer> <LocalLeader>c I"<Esc>
    au FileType vim noremap <buffer> <LocalLeader>u ^x<Esc>
augroup END

" Highlight ExtraWhitespace "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=red
augroup WhitespaceMatch
    " Remove ALL autocommands for the WhitespaceMatch group.
    autocmd!
    autocmd BufWinEnter * let w:whitespace_match_number =
                \ matchadd('ExtraWhitespace', '\s\+$')
    autocmd InsertEnter * call s:ToggleWhitespaceMatch('i')
    autocmd InsertLeave * call s:ToggleWhitespaceMatch('n')
augroup END
function! s:ToggleWhitespaceMatch(mode)
    let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
    if exists('w:whitespace_match_number')
        call matchdelete(w:whitespace_match_number)
        call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
    else
        " Something went wrong, try to be graceful.
        let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics: "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use case insensitive search, except when using capital letters
set autoindent          " copies current indent on newline
"  uses same indent when textwidth is reached
set smartindent         " indentations are based off FileType
set backspace=indent,eol,start " Allow backspacing over ai, \n, I
set encoding=utf8       " standard encoding and standard language
set ignorecase          " ignores the case of normal letters
set smartcase           " identifies case specific patterns
set nomodeline          " disabled due to security vulnerabilities
set nostartofline       " Off - cursor is kept in the same column
set notimeout ttimeout ttimeoutlen=200 " Time out on keycodes, != mappings
set mouse=a             " Enable use of the mouse for all modes
set expandtab           " tabs are spaces
set shiftround          " set indent to round to nearest shiftwidth
set shiftwidth=4
set softtabstop=4       " number of spaces in tab when editing
set tabstop=4           " number of visual spaces per TAB
set tw=79               " physical width of document
set wrap                " visual/virtual line wrapping

" Console-Menu "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>

" Visual autocomplete for command menu
set wildmode=longest,list,full

" Directory Browsing (NERDTree, netrw, ctags, tagbar) "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default window size
let g:netrw_winsize = 25

" Files "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread            " watch for file changes
set confirm             " Use a dialog when an operation has to be confirmed
set hidden              " Re-use the same win & switch from unsaved buffers
set isfname+=32         " Supports filenames with spaces when using gf

" Folding "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " Enable folding
set foldlevelstart=10   " Open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" Searching "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight search matches

" --UI Config "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cmdheight=2         " Set the command window height to 2 lines
set colorcolumn=80      " highlight column number
highlight ColorColumn ctermbg=233
set cursorline          " highlight current line
set laststatus=2        " Display the status line
set lazyredraw          " redraws screen only when we need to --faster macros
set matchtime=1         " decisec to showmatch ([{}]) | default=5
set number              " display current line number on Left
set numberwidth=4       " n cols to use for the line number
"set rnu                 " relative numbers
"set showcmd             " show partial commands in bottom bar !=Airline
set showmatch           " highlight matching [{()}]
set showmode            " show INSERT, VISUAL, etc
set splitbelow splitright " Splits open at bottom and right
set visualbell          " Use visual bell instead of beeping
syntax on               " Enable syntax highlighting
syntax enable           " enable syntax processing      --Colors
