"        _
" __   _(_)_ __ ___  _ __ ____
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimental
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! LoadTemplate(extension)
    silent! :execute '0r $VIM/templates/'.a:extension.'tpl'
    silent! execute 'source $VIM/templates/'.a:extension.'.patterns.tpl'
endfunction!
au BufNewFile * silent! call LoadTemplate('%:e')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sources
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIM/abbrev/abbreviations.vim
source $VIMRUNTIME/menu.vim
au BufNewFile * silent! 0r $VIM/templates/%:e.tpl

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menu and Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Console-Menu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>

" Enable autocompletion
set wildmenu            " visual autocomplete for command menu
set wildmode=longest,list,full

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" Returns the current branch and an empty string if there is no git repository
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Set statusline into a true information bar:
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
set statusline+=\%F%m%r%h%w
set statusline+=[FORMAT=%{&ff}]
set statusline+=\[TYPE=%Y]
set statusline+=\[ASCII=\%03.3b]
set statusline+=\[HEX=\%02.2B]
set statusline+=\[POS=%04l,%04v]
set statusline+=\[%p%%]
set statusline+=\[LEN=%L]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
"   Notes: use '<mode>:unmap' to unmap user key-bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MapLeader default='\' |  LocalLeader effect only certain filetypes
let mapleader = "-"
let maplocalleader = "["

" Enwrap selected word/text in quotes // recursive to line:80
nmap <Leader>" viWc"<Esc>pf"noh<CR>
vmap <Leader>" c"<Esc>pf"noh<CR>

" Function Keys
noremap  <F10> <Del>
nnoremap <F6> :set spelllang=en_us<CR>

" Disable old keys (no operation)
noremap <Left>  <nop>
noremap <Right> <nop>
noremap <Up>    <nop>
noremap <Down>  <nop>

" Edit MYVIMRC | Source MYVIMRC/Abbreviations
nnoremap <Leader>ev :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>:noh<cr>
nnoremap <Leader>sa :source $VIM/abbreviations.vim<CR>

" Jump over braces/string
inoremap <C-j> <Right>
inoremap <C-l> <End>

" Jump between .tpl placeholders
"nnoremap <C-j> /<+.\{-1,}+<CR>c/+/>/e<CR>

" Make braces auto closing
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>

" Match Groups
"   Reset matches: :match none
nnoremap <Leader>colwarn :3match LineNr /\%>74v.\+/<CR>
nnoremap <Leader>colmax :3match ColorColumn /\%>80v.\+/<CR>
nnoremap <Leader>tabs :3match TabLine /[\t]/<CR>

" Navigating
nnoremap <C-l> :bn<CR>
nnoremap <C-k> :b#<CR>
nnoremap <C-h> :bp<CR>

" New line insert
nnoremap <C-n> o<Esc>k
nnoremap <C-o> O<Esc>j

" Tagbar
"http://majutsushi.github.io/tagbar/
"nnoremap <F8> :TagbarToggle<CR>

" Toggle word case-sensitivity
inoremap <C-u> <Esc><C-v>B~Ea
nnoremap <C-u> viW~E
nnoremap <S-u> viw~e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands (automcd || au)
"  color-groups: :so $VIMRUNTIME/syntax/hitest.vim
"  events: http://tech.saigonist.com/b/code/list-all-vim-script-events.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FileType "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype_all
    au!
    " Show Tablines
    au BufRead,InsertLeave * match TabLine /[\t]/
    " Deletes all trailing whitepsace on save
    au BufWritePre * %s/\s\+$//e
augroup END

augroup filetype_cpp
    au!
    au FileType cpp noremap <buffer> <LocalLeader>c I// <Esc>
    au FileType cpp noremap <buffer> <LocalLeader>u 03x<Esc>
augroup END

augroup filetype_css
    au!
    au BufWritePre,BufRead *.css normal gg=G
    au FileType css noremap <buffer> <LocalLeader>c ^i/* <Esc><s-a> */<Esc>
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
    au BufWritePre,BufRead *.html normal gg=G
    au FileType html noremap <buffer> <LocalLeader>c I<!--<Esc><s-a>--><esc>
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
    au BufWritePre * %s/\s\+$//e
    au FileType python noremap <buffer> <LocalLeader>c I#<Esc>
    au FileType python noremap <buffer> <LocalLeader>u 0x<Esc>
augroup END

augroup filetype_rst
    au!
    au BufRead,BufNewFile *.rst setlocal noet
augroup END

augroup filetype_vim
    au!
    au BufWritePre * %s/\s\+$//e
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
" Directory Browsing "
" netrw, ctags, tagbar"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ex, Sex, Vex
cnoremap vex Vex
let g:netrw_winsize = 25

" --UI Config "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cmdheight=2         " Set the command window height to 2 lines
set colorcolumn=80
highlight ColorColumn ctermbg=233
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
set shiftround          " set indent to round to nearest shiftwidth
set shiftwidth=4
set softtabstop=4       " number of spaces in tab when editing
set tabstop=4           " number of visual spaces per TAB, default=8
set tw=79               " width of document

" Files "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread            " watch for file changes
set confirm             " Use a dialog when an operation has to be confirmed
set hidden              " Re-use the same win & switch from unsaved buffers
set isfname+=32         " Supports filenames with spaces when using gf
set nocompatible        " compatible makes Vim 99% compatible with vi
filetype indent plugin on    " load filetype-specific indent files
filetype on            " enables filetype detection
