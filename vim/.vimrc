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
function SourceMeUnix()
    source $VIM/abbrev/abbreviations.vim
    source $VIM/src/au.vim
    source $VIM/src/gui.vim
    source $VIM/src/mappings.vim
    source $VIM/src/playground.vim
    source $VIM/src/plugins.vim
    source $VIM/src/settings.vim
endfunction

function SourceMeWindows()
    source $VIM/../dotfiles/vim/abbrev/abbreviations.vim
    source $VIM/../dotfiles/vim/src/au.vim
    source $VIM/../dotfiles/vim/src/gui.vim
    source $VIM/../dotfiles/vim/src/mappings.vim
    source $VIM/../dotfiles/vim/src/playground.vim
    " if host is permission-restricted ("gui_running") \
    "   comment out line below as it requres git running
    source $VIM/../dotfiles/vim/src/plugins.vim
    source $VIM/../dotfiles/vim/src/settings.vim
endfunction

" Templates
"""""""""""""""""""
function! LoadTemplate(extension)
    silent! :execute '0r $VIM/templates/'. a:extension. '.tpl'
    silent! execute 'source $VIM/templates/'.a:extension.'.patterns.tpl'
endfunction
autocmd BufNewFile * silent! call LoadTemplate('%:e')

" OS Restrictions
""""""""""""""""""""""""""""""""""""""""
if has("mac")
    call SourceMeUnix()
    colorscheme tender
elseif has("win32")
    call SourceMeWindows()
    colorscheme industry
elseif has("unix")
    call SourceMeUnix()
    colorscheme industry
endif
