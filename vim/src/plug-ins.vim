" junegunn/vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" URL : https://github.com/junegunn/vim-plug
" Install Plugins Vim > :PluginInstall 
" Automatic installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'

" Interactive scratchpad
Plug 'metakirby5/codi.vim'

" Automatic table creator & formatter
Plug 'dhruvasagar/vim-table-mode'

" Surrounds providing mappings to pairs
Plug 'tpope/vim-surround'

" Plugin for Git
Plug 'tpope/vim-fugitive'

" Code-completion engine  " dependencies: build-essential cmake vim-nox python3-dev mono-complete golang nodejs default-jdk npm
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

