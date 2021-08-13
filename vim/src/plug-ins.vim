" junegunn/vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [Guide] https://github.com/junegunn/vim-plug/wiki/tutorial

" Plugins will be downloaded under the specified directory.
if has("win32")
	call plug#begin('$HOME\.vim\plugged')
else
	call plug#begin('$HOME/.vim/plugged')
endif

" [Airline] Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" [Codi] Interactive scratchpad // NOTE: !support in Windows
Plug 'metakirby5/codi.vim'
" [Table-Mode] Automatic table creator & formatter
Plug 'dhruvasagar/vim-table-mode'
" [Surroundings] Surrounds providing mappings to pairs
Plug 'tpope/vim-surround'
" [Fugitive] Plugin for Git
Plug 'tpope/vim-fugitive'
" [YCM] Code-completion engine
Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
call plug#end()

" Plug-in Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Table-Mode -> 'dhruvasagar/vim-table-mode'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For Markdown-compatible tables use (default)
" let g:table_mode_corner='|'

" For RST-compatible tables use
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

