" Autogroups"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup html
    autocmd!
    au BufNewFile,BufRead *.md set softtabstop=2 shiftwidth=2 tabstop=2
augroup END

augroup md
    autocmd!
    au BufNewFile,BufRead *.md set softtabstop=2 shiftwidth=2 tabstop=2
augroup END
