" Vim-Plug, plug-in manager
call plug#begin('$HOME/.config/nvim/plugged')

Plug 'dhruvasagar/vim-table-mode'
Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'

" initialize plugin system
call plug#end()

" VIM-TABLE-MODE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Markdown-compatible tables use (default)
let g:table_mode_corner='|'
" For RST-compatible tables use
" let g:table_mode_corner_corner='+'
" let g:table_mode_header_fillchar='='

" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start NERDTree.  If a file is specified, move the cursor to its window
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" If another buffer tries to replace NERDTree, 
"    put it in the other window, and bring back NERDTREE
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' 
    \ && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | 
    \ execute 'buffer'.buf | endif

" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P shorthand for FZF ':Files' searching
nnoremap <C-p> :Files<CR>   

" YCM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Using defaults. Note: YCMHover does not seem to work with Neovim.
