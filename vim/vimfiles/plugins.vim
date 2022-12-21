" Vim-Plug, plug-in manager
call plug#begin('$HOME/.config/nvim/plugged')

Plug 'dhruvasagar/vim-table-mode'                       " Table Generator
Plug 'flazz/vim-colorschemes'                           " Theme: various
Plug 'dracula/vim', {'as': 'dracula'}                   " Theme: dracula
Plug 'honza/vim-snippets'                               " Code Completion
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Fuzzy Finder
Plug 'junegunn/fzf.vim'                                 " Fuzzy Finder Plug 'junegunn/vim-easy-align'                          " Align Columns
Plug 'NLKNguyen/papercolor-theme'                       " Theme: PaperColor
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	" PL Parser/Hl
Plug 'preservim/nerdtree'                               " File Explorer
Plug 'SirVer/ultisnips'                                 " Code Completion
Plug 'terryma/vim-multiple-cursors'                     " Edit: Multi Cursors
Plug 'tpope/vim-fugitive'                               " Git integration
Plug 'tpope/vim-repeat'                                 " Repeat macros
Plug 'tpope/vim-surround'                               " Edit: pattern borders
Plug 'vim-airline/vim-airline'                          " Theme: Status/Tabline
Plug 'vim-airline/vim-airline-themes'                   " Theme: Collections
"Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' } " Code Completion
"Plug 'ycm-core/YouCompleteMe'                           " Code Completion

" initialize plugin system
call plug#end()

" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P shorthand for FZF ':Files' searching
nnoremap <C-p> :Files<CR>

" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start NERDTree.  If a file is specified, move the cursor to its window
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" If another buffer tries to replace NERDTree,
"    put it in the other window, and bring back NERDTREE
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+'
"    \ && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" |
"    \ execute 'buffer'.buf | endi f

" CWD is set to current file's directory
let g:NERDTreeChDirMode=3
" Toggle NERDTREE view
nnoremap -- :NERDTreeToggle<CR>

" Vim-Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme fx                                 " - Colorscheme ---------------
colorscheme dracula                             " - Colorscheme ---------------
hi Normal ctermbg=NONE                          " - Transparent Bg ------------
let g:airline_theme='jellybeans'                " - Statusline Theme ----------
"------------------------------------------------------------------------------
" Powerline fonts
let g:airline_powerline_fonts = 1
" Extensions
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#tabline#enabled = 1  " Show all buffers
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Vim-Table-Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Markdown-compatible tables use (default)
let g:table_mode_corner='|'
" For RST-compatible tables use
" let g:table_mode_corner_corner='+'
" let g:table_mode_header_fillchar='='

" YCM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Using defaults. Note: YCMHover does not seem to work with Neovim.
"let g:ycm_global_extra_conf = $HOME/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py 
let g:ycm_extra_conf_globlist = ['$HOME/.config/nvim/plugged/YouCompleteMe/*','!~/*']

