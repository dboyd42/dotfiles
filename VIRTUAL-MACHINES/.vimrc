" ==========================
" Basic Vim Configuration
" ==========================
" filepath: $HOME/.vimrc

" --- Leader Key ---
let mapleader="\\"

" --- General Behavior ---
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8

" --- Interface ---
set number
"set relativenumber
set cursorline
set showmatch
set ruler
set showcmd
set wildmenu
set scrolloff=8
set sidescrolloff=8

" --- Tabs & Indentation ---
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set softtabstop=4

" --- Text Wrapping ---
set textwidth=79        " Auto-insert newline at column 79
set wrap                " Enable visual line wrapping by default

" Toggle wrap with \w
nnoremap <silent> <leader>w :set wrap!<CR>

" --- Search ---
set ignorecase
set smartcase
set incsearch
set hlsearch

" Toggle search highlight with \ + Space
nnoremap <silent> <leader><Space> :set hlsearch!<CR>

" --- Insert Current Date (\ts) ---
" Inserts YYYY-MM-DD at cursor position
nnoremap <silent> <leader>ts a<C-R>=strftime('%Y-%m-%d')<CR><Esc>

" --- Color Column ---
set colorcolumn=80
highlight ColorColumn ctermbg=darkred guibg=darkred

" --- Editing ---
set backspace=indent,eol,start
set clipboard=unnamedplus
set mouse=a

" --- Performance ---
set updatetime=300
set timeoutlen=500

" --- Status Line ---
set laststatus=2

" --- File Handling ---
set hidden
set noswapfile
set nobackup

" --- Visual ---
set termguicolors
colorscheme desert
