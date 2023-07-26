" This file is to be used as a basic Vim config file for support on non-IDE
" environments such as servers.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme peachpuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible        " disable compatibility to old-time vi

" Functionality "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Formatting
set nf=alpha,bin,octal,hex  " format special numbers

" Indenting your Car
set autoindent          " copies current indent on newline (ai)
"  uses same indent when textwidth is reached
set smartindent         " indentations are based off FileType
set backspace=indent,eol,start " Allow backspacing over ai, \n, I
set encoding=utf-8      " standard encoding and standard language

" Navigating the 7 Seas
set nomodeline          " disabled due to security vulnerabilities
set nostartofline       " Off - cursor is kept in the same column
set notimeout ttimeout ttimeoutlen=200 " Time out on keycodes, != mappings
set mouse=a             " Enable use of the mouse for all modes

" Tabs, Tabbing, and Tabbies; Tablature for the People
set expandtab           " tabs are spaces
set shiftround          " set indent to round to nearest shiftwidth
set shiftwidth=4        " applies to '>>' and '<<' commands (widths for ai)
set softtabstop=4       " nSpaces in TAB when editing so <BS> works 'correctly'
set tabstop=4           " number of visual spaces per TAB

" Wrapping it Tight
set tw=79               " physical width of document
set wrap                " visual/virtual line wrapping

" Visual autocomplete for command menu
set wildmode=longest,list,full  " get bash-like tab completions

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
set printoptions=number:y " Enables printing with line numbers *Use w 'ha'
filetype plugin indent on " allows auto-indenting depending on filetype

" Folding "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " Enable folding
set foldlevelstart=10   " Open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level (manual, indent, syntax)

" Searching "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight search matches
" Use case insensitive search, except when using capital letters
set ignorecase          " case insensitive matching
set smartcase           " identifies case specific patterns

" --UI Config "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme fx         " See: plugins.vim
set cmdheight=2         " Set the command window height to 2 lines
set colorcolumn=80      " highlight column number
" 1 == red; 233!=tmux
highlight ColorColumn ctermbg=1
set cursorline          " highlight current line
set laststatus=2        " Display the status line
set lazyredraw          " redraws screen only when we need to --faster macros
set matchtime=1         " decisec to showmatch ([{}]) | default=5
set nowrap              " do not wrap lines that go off screen
set number              " display current line number on Left
set numberwidth=4       " n cols to use for the line number
"set rnu                 " relative numbers (Great4 editing; Terrible4 writing)
"set showcmd             " show partial commands in bottom bar !=Airline
set showmatch           " highlight matching [{()}]
set showmode            " show INSERT, VISUAL, etc
" Always show the signcolumn,
" else it'd shift the txt each time diagnostics appear/become resolved.
set signcolumn=yes
set splitbelow splitright " Splits open at bottom and right
set visualbell          " Use visual bell instead of beeping
syntax on               " Enable syntax highlighting
syntax enable           " enable syntax processing      --Colors

