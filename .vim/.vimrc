"        _
" __   _(_)_ __ ___  _ __ ____
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimental
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PlugIns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call plug#begin('~/.vim/plugged')
"Plug 'jrebert/vimagit'
"Plug 'terrma/vim-multiple-cursors'
"call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sources
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIM/abbreviations.vim   " Used for abbreviations
source $VIMRUNTIME/menu.vim     " Used for console-menu
au BufNewFile * silent! 0r $VIM/templates/%:e.tpl

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menu(s)
" console-meunu
"  Pressing <F4> will start the menu.  You can now use the cursor keys to
"  select a menu entry.  Hit <Enter> to execute it.  Hit <Esc> if you want to
"  cancel.  This does require the +menu feature enabled at compile time.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>

" Enable autocompletion
set wildmenu            " visual autocomplete for command menu
set wildmode=longest,list,full

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
"   Notes: use '<mode>:unmap' to unmap user key-bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" MapLeader default='\' |  LocalLeader effect only certain filetypes
:let mapleader = "-"
:let maplocalleader = "["

" Enwrap selected word/text in quotes // recursive: line 59
:nmap <Leader>" viWc"<Esc>pf":noh<CR>
:vmap <Leader>" c"<Esc>pf":noh<CR>
":vnoremap <Leader>" c""<Esc>hpf"     // use without recursion

" Function Keys
"  Delete
:inoremap <F10> <Del>
:nnoremap <F10> <Del>
"  ftp://ftp.vim.org/pub/vim/runtime/spell
:nnoremap <F6> :setLocal spell! spelllang=en_us<CR>

" Disable old keys (no operation)
:noremap <Left>  <nop>
:noremap <Right> <nop>
:noremap <Up>    <nop>
:noremap <Down>  <nop>

" Edit my Vimrc | Source my Vimrc/Abbreviations
:nnoremap <Leader>ev :split $MYVIMRC<CR>
:nnoremap <Leader>sv :source $MYVIMRC<CR>:noh<cr>
:nnoremap <Leader>sa :source $VIM/abbreviations.vim<CR>

" Jump over braces/string
:inoremap <c-j> <Right>
:inoremap <c-l> <End>

" Make braces auto closing
:inoremap {<CR> {<CR>}<Esc>O
:inoremap [ []<Left>
:inoremap ( ()<Left>
:inoremap " ""<Left>

" Match Groups
"   Reset matches: :match none
:nnoremap <Leader>colwarn :3match LineNr /\%>74v.\+/<CR>
:nnoremap <Leader>colmax :3match ColorColumn /\%>80v.\+/<CR>
:nnoremap <Leader>tabs :3match TabLine /[\t]/<CR>

" Navigating
:nnoremap <C-L> :bn<CR>
:nnoremap <C-K> :ba<CR>
:nnoremap <C-J> :b#<CR>
:nnoremap <C-H> :bp<CR>

" New line insert
:nnoremap <C-j> o<Esc>k
:nnoremap <C-o> O<Esc>j

" Tagbar
"http://majutsushi.github.io/tagbar/
"nnoremap <F8> :TagbarToggle<CR>

" Toggle word case-sensitivity
:inoremap <C-u> <Esc><C-v>B~Ea
:nnoremap <C-u> viW~E
:nnoremap <S-u> viw~e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands (automcd || au)
"   Notes: run whenever certain events happen
"    filetypes: BufNewFile,BufRead,BufWritePre
"    augroup: au! that don't duplicate everytime we source it
"    events: http://tech.saigonist.com/b/code/list-all-vim-script-events.html
"    syntax: au EVENT\FilePattern\CMD
"    list of color groups: :so $VIMRUNTIME/syntax/hitest.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype_all
    au!
    "Automatically deletes all trailing whitepsace on save
    au BufWritePre * %s/\s\+$//e
augroup END

augroup filetype_cpp
    au!
    au FileType cpp noremap <buffer> <LocalLeader>c I// <Esc>
    au FileType cpp noremap <buffer> <LocalLeader>u 03x<Esc>
augroup END

augroup filetype_css
    au!
    au BufWritePre,BufRead *.css :normal gg=G
    au BufWritePre,BufRead *.css setLocal wrap spell
    au FileType css noremap <buffer> <LocalLeader>c ^i/* <Esc><s-a> */<Esc>
    au FileType css noremap <buffer> <LocalLeader>u ^3x<end>xxx
augroup END

augroup filetype_javascript
    au!
    autocmd FileType javascript noremap <buffer> <LocalLeader>c I//<Esc>
    autocmd FileType javascript noremap <buffer> <LocalLeader>u 02x<Esc>
augroup END

augroup filetype_html
    au!
    au BufWritePre,BufRead *.html :normal gg=G
    au FileType html noremap <buffer> <LocalLeader>c I<!--<Esc><s-a>--><esc>
    au FileType html noremap <buffer> <LocalLeader>u ^4x<end>xxx
augroup END

augroup filetype_python
    au!
    au FileType python noremap <buffer> <LocalLeader>c I#<Esc>
    au FileType python noremap <buffer> <LocalLeader>u 0x<Esc>
augroup END

augroup filetype_rst
    au!
    au BufWritePre,BufRead *.rst setLocal noet
augroup END

augroup filetype_vim
    au!
    au FileType vim noremap <buffer> <LocalLeader>c I"<Esc>
    au FileType vim noremap <buffer> <LocalLeader>u ^x<Esc>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Directory Browsing "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw, ctags, tagbar
let g:netrw_winsize = 25

" --UI Config "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set statusline into a true information bar:
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set autoread            " watch for file changes
set cmdheight=2         " Set the command window height to 2 lines
set cursorline          " highlight current line
set hlsearch            " highlight search matches
set laststatus=2        " Display the status line
set matchtime=1         " decisec to showmatch ([{}]) | default=5
set number              " display current line number on Left
set numberwidth=4       " n cols to use for the line number
set showcmd             " show partial commands in bottom bar
set showmatch           " highlight matching [{()}]
set showmode            " show INSERT, VISUAL, etc
set splitbelow splitright " Splits open at bottom and right
set visualbell          " Use visual bell instead of beeping
syntax on               " Enable syntax highlighting
syntax enable           " enable syntax processing      --Colors

" Some basics: "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use case insensitive search, except when using capital letters
set backspace=indent,eol,start " Allow backspacing over ai, \n, I
set ignorecase          " ignores the case of normal letters
set smartcase           " identifies case specific patterns
set nomodeline          " disabled due to security vulnerabilities
set nostartofline       " Off - cursor is kept in the same column
set notimeout ttimeout ttimeoutlen=200 " Time out on keycodes, != mappings
set lazyredraw          " redraws screen only when we need to
set mouse=a             " Enable use of the mouse for all modes
set expandtab           " tabs are spaces
set softtabstop=4       " number of spaces in tab when editing
set tabstop=4           " number of visual spaces per TAB, default=8

" Files "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set confirm             " Use a dialog when an operation has to be confirmed
set hidden              " Re-use the same win & switch from unsaved buffers
set isfname+=32         " Supports filenames with spaces when using gf
set nocompatible        " compatible makes Vim 99% compatible with vi
filetype indent plugin on    " load filetype-specific indent files
filetype on             " enables filetype detection
