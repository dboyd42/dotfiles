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
