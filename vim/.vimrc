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
source $VIM/abbrev/abbreviations.vim
source $VIM/src/au.vim
source $VIM/src/gui.vim
source $VIM/src/mappings.vim
source $VIM/src/playground.vim
source $VIM/src/plugins.vim
source $VIM/src/settings.vim

" Download the package below and link it accordingly to your environment
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

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
    colorscheme tender
elseif has("win32")
    colorscheme industry
elseif has("unix")
    hi Normal guibg=NONE ctermbg=NONE
    "colorscheme industry
endif

