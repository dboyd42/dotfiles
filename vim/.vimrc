"        _
" __   _(_)_ __ ___  _ __ ____
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""
" Sources
"""""""""""""""""""
function! WaitToLoadTplLinux()
    source $VIM/abbrev/abbreviations.vim
    source $VIM/src/au.vim
    source $VIM/src/gui.vim
    source $VIM/src/mappings.vim
    source $VIM/src/playground.vim
    source $VIM/src/plugins.vim
    source $VIM/src/settings.vim
endfunction
function! WaitToLoadTplWindows()
    source $VIM\abbrev\abbreviations.vim
    source $VIM\src\au.vim
    source $VIM\src\gui.vim
    source $VIM\src\mappings.vim
    source $VIM\src\playground.vim
    source $VIM\src\plugins.vim
    source $VIM\src\settings.vim
endfunction

" Download the package below and link it accordingly to your environment
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Templates
"""""""""""""""""""
function! LoadTemplate(extension)
    silent! :execute '0r $VIM/templates/'. a:extension. '.tpl'
    silent! execute 'source $VIM/templates/'.a:extension.'.patterns.tpl'
endfunction

" Create Templates upon writing
autocmd BufNewFile * silent! call LoadTemplate('%:e')
" Perform functions on templates (Prevents Error of replacing +DATE+, etc)

" OS Restrictions
""""""""""""""""""""""""""""""""""""""""
if has("mac")
    colorscheme tender
    call WaitToLoadTplLinux()
elseif has("win32")
    colorscheme industry
    call WaitToLoadTplWindows()
    " Rm cursorline due to blinding cursorline UI
    set nocursorline
    " Use <C-v> to paste from sys clip in insert mode
    inoremap <C-v> <Esc><C-">+pa
    " Use <C-v> to copy to sys clip in visual mode
    vnoremap <C-c> <C-">+y
elseif has("unix")
    hi Normal guibg=NONE ctermbg=NONE
    "colorscheme industry
    call WaitToLoadTplLinux()
endif

