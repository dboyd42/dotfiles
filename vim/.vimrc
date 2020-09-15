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
    source $VIM/src/plug-ins.vim
    source $VIM/src/settings.vim
endfunction
function! WaitToLoadTplWindows()
    source $VIM\abbrev\abbreviations.vim
    source $VIM\src\au.vim
    source $VIM\src\gui.vim
    source $VIM\src\mappings.vim
    source $VIM\src\plug-ins.vim
    source $VIM\src\settings.vim
endfunction

" Templates
"""""""""""""""""""
function! LoadTemplate(extension)
    silent! :execute '0r $VIM/templates/'. a:extension. '.tpl'
    silent! execute 'source $VIM/templates/'.a:extension.'.patterns.tpl'
endfunction

" Create Templates upon writing
autocmd BufNewFile * silent! call LoadTemplate('%:e')

" OS Restrictions
""""""""""""""""""""""""""""""""""""""""
if has("mac")
    call WaitToLoadTplLinux()
elseif has("win32")
    colorscheme industry
    call WaitToLoadTplWindows()
    " Rm cursorline due to blinding cursorline UI
    set nocursorline
elseif has("unix")
    hi Normal guibg=NONE ctermbg=NONE
    colorscheme industry
    call WaitToLoadTplLinux()
endif

" Temporary Configurations
""""""""""""""""""""""""""

