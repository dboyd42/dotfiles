""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins --Vundle configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " Compatible makes Vim 99% compatible w/ vi
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path to vundle
call vundle#begin()                 " required
Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'SirVer/ultisnips'           " Snippets
Plugin 'ctrlpvim/ctrlp.vim'         " Full path fuzzy file finder
Plugin 'dhruvasagar/vim-table-mode' " rst table mode
Plugin 'scrooloose/nerdtree'        " File system explorer
Plugin 'sjl/gundo.vim'              " Graphical Undo Tree
Plugin 'flazz/vim-colorschemes'     " additional colorschemes
Plugin 'terryma/vim-multiple-cursors' " edit multiple loc synchronously
Plugin 'tpope/vim-fugitive'         " Git wrapper
Plugin 'tpope/vim-surround'         " mappings for surrounding pairs
Plugin 'vim-airline/vim-airline'    " statusline
Plugin 'vim-airline/vim-airline-themes'    " statusline-themes
Plugin 'w0rp/ale'                   " Asynchronous Lint Engine
call vundle#end()                   " required
filetype plugin indent on           " required

" Plugin ( Settings ) "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make Gundo work with Python 3
if has ('python3')
    let g:gundo_prefer_python3 = 1
endif

" Show hidden files
let NERDTreeShowHidden=1
let g:ctrlp_show_hidden=1
