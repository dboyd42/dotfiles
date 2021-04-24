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
    source $VIM/src/functions.vim
    source $VIM/src/mappings.vim
    source $VIM/src/plug-ins.vim
    source $VIM/src/settings.vim
endfunction
function! WaitToLoadTplWindows()
    source $VIM\abbrev\abbreviations.vim
    source $VIM\src\au.vim
    source $VIM\src\gui.vim
    source $VIM\src\functions.vim
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
    set nocursorline
endif

" Temporary Configurations
""""""""""""""""""""""""""

" Title Case a Line
cnoremap TC .s/\<\(\w\)\(\w*\)\>/\u\1\L\2/g<CR>:nohl<CR>

" Linebreak at textwidth=79 | URL: https://stackoverflow.com/questions/2024443/saving-vim-macros
let @8 = '80|Bi€ýa'
" Note: No persistence

" Netrw "
"""""""""
" Invoke netrw --vertical split -> used for wide-screen monitors
nnoremap -h :Vex<CR>
" Invoke netrw --horizontal split -> used for portrait-flipped monitors
nnoremap -- :Sex<CR>

" Remove banner --keeping
" let g:netrw_banner = 0

" How files are opened (1=horizontal, 2=vertical, 3=newTab, 4=prevWindow)
let g:netrw_browse_split = 4

" Set width of directory explorer
let g:netrw_winsize = 25

" Avoid the "Hit ENTER to continue" prompts --Windows 10
" silent !echo Hello

