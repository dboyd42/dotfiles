augroup exe_code
    autocmd!

    " execute python code
    autocmd FileType python nnoremap <buffer> <localleader>rp
        \ :sp<CR> :term python3 %<CR> :startinsert<CR>
augroup END
