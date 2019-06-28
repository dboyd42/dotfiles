"        _
" __   _(_)_ __ ___  _ __ ____
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
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
:nmap <leader>" viWc"<esc>pf":noh<cr>
:vmap <leader>" c"<esc>pf":noh<cr>
":vnoremap <leader>" c""<esc>hpf"     // use without recursion

" Delete
:inoremap <F10> <del>
:nnoremap <F10> <del>

" Disable old keys (no operation)
:noremap <left>  <nop>
:noremap <right> <nop>
:noremap <up>    <nop>
:noremap <down>  <nop>

" Edit my Vimrc | Source my Vimrc/Abbreviations
:nnoremap <leader>ev :split $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>:noh<cr>
:nnoremap <leader>sa :source $VIM/abbreviations.vim<cr>

" Jump over braces/string
:inoremap <c-j> <Right>
:inoremap <c-l> <End>

" Make braces auto closing
:inoremap {<cr> {<cr>}<esc>O
:inoremap [ []<left>
:inoremap ( ()<left>
:inoremap " ""<left>

" Match Groups 
"   Reset matches: :match none
:nnoremap <leader>colwarn :3match LineNr /\%>74v.\+/<CR>
:nnoremap <leader>colmax :3match ColorColumn /\%>80v.\+/<CR>
:nnoremap <leader>tabs :3match TabLine /[\t]/<CR>

" Navigating
:nnoremap <c-L> :bn<CR>
:nnoremap <c-H> :bp<CR>
 
" New line insert
:nnoremap <c-j> o<esc>k
:nnoremap <c-o> O<esc>j

" Toggle word case-sensitivity
:inoremap <c-u> <esc><c-v>B~Ea
:nnoremap <c-u> viW~E
:nnoremap <S-u> viw~e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands (au)
"   Notes: run whenever certain events happen
"    filetypes: BufNewFile,BufRead,BufWritePre
"    augroup: au! that don't duplicate everytime we source it
"    events: http://tech.saigonist.com/b/code/list-all-vim-script-events.html
"    syntax: au EVENT\FilePattern\CMD
"    list of color groups: :so $VIMRUNTIME/syntax/hitest.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"augroup filetype_all
    "au!
    "au BufWritePre,BufRead * :2match LineNr /\%>74v.\+/
    "au BufWritePre,BufRead * :3match errorMsg /\%>80v.\+/
"augroup END

augroup filetype_cpp
    au!
    au FileType cpp noremap <buffer> <localleader>c I// <esc>
    au FileType cpp noremap <buffer> <localleader>u 03x<esc>
augroup END

augroup filetype_css
    au!
    au BufWritePre,BufRead *.css :normal gg=G
    au BufWritePre,BufRead *.css setlocal wrap spell
    au FileType css noremap <buffer> <localleader>c ^i/* <esc><s-a> */<esc>
    au FileType css noremap <buffer> <localleader>u ^3x<end>xxx
augroup END

augroup filetype_javascript
    au!
    autocmd FileType javascript noremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript noremap <buffer> <localleader>u 02x<esc>
    au FileType javascript :iabbrev <buffer> iff if:<left>
augroup END

augroup filetype_html
    au!
    au BufWritePre,BufRead *.html :normal gg=G
    au BufWritePre,BufRead *.html setlocal nowrap spell
    au FileType html noremap <buffer> <localleader>c I<!--<esc><s-a>--><esc>
    au FileType html noremap <buffer> <localleader>u ^4x<end>xxx
augroup END

augroup filetype_python
    au!
    au FileType python noremap <buffer> <localleader>c I#<esc>
    au FileType python noremap <buffer> <localleader>u 0x<esc>
    au FileType python :iabbrev <buffer> iff if ()<left>
augroup END

augroup filetype_rst
    au!
    " noet not working
    au BufWritePre,BufRead *.rst setlocal nowrap spell noet
augroup END

augroup filetype_vim
    au!
    au FileType vim noremap <buffer> <localleader>c I"<esc>
    au FileType vim noremap <buffer> <localleader>u ^x<esc>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" --UI Config "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Splits open at the bottom and right, whihc is non-retarded, unlike vim
" defaults
set splitbelow splitright

" Always display the status line, even if only one window is displayed
set laststatus=2        " 2 = ON, 0 = OFF

" Set statusline into a true information bar:
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

set number              " display current line number on left
set numberwidth=4       " n cols to use for the line number
set cursorline          " highlight current line
" set relativenumber      " Show rnu to line 
" set cursorcolumn        " highlight current column

set spelllang=en        " Configuring Spell Check
" set spell               " spell checker
" set spellsuggest=5      " show n of alt spellings

set showmatch           " highlight matching [{()}]
set matchtime=1         " decisec to showmatch ([{}]) | default=5

" Files "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set isfname+=32         " Supports filenames with spaces when using gf





" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible        " compatible makes Vim 99% compatible with vi
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on           " load filetype-specific indent files
""filetype on           " enable filetype detection
filetype plugin on    " enable filetype specific plugins
 





" Some basics: "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on
 
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set autowriteall
set confirm             " Instead of failing a command because of unsaved
                        " changes, instead raise a dialogue asking if you wish
                        " to save changed files.
 
" Show partial commands in the last line of the screen
set showcmd             " show command in bottom bar
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
set nomodeline
 
 
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=             " turns off visual bell
" set noerrorbells      " turn off error bells
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
" Indentation settings for using 4 spaces instead of tabs.
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set tabstop=4               " number of visual spaces per TAB, default=8
 
set autoread            " watch for file changes
set showmode            " show INSERT, VISUAL, etc

syntax enable           " enable syntax processing      --Colors
set lazyredraw          " redraw only when we need to
