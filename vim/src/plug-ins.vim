" junegunn/vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [Guide] https://github.com/junegunn/vim-plug/wiki/tutorial

" Plugins will be downloaded under the specified directory.
if has("unix")
	call plug#begin('$HOME/.vim/plugged')
    " [YCM] Code-completion engine
    Plug 'ycm-core/YouCompleteMe'               ### TODO: fix to run on Win
elseif has("win32")
	call plug#begin('$HOME\.vim\plugged')
endif

" [Airline] Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" [Table-Mode] Automatic table creator & formatter
Plug 'dhruvasagar/vim-table-mode'
" [Surroundings] Surrounds providing mappings to pairs
Plug 'tpope/vim-surround'
" [Fugitive] Plugin for Git
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" Plug-in Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Table-Mode -> 'dhruvasagar/vim-table-mode'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For Markdown-compatible tables use (default)
let g:table_mode_corner='|'

" For RST-compatible tables use
" let g:table_mode_corner_corner='+'
" let g:table_mode_header_fillchar='='

