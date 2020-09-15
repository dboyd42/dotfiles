""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands (automcd || au)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FileType "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype_all
    au!
    " Show Tablines
    au BufRead,InsertLeave * match TabLine /[\t]/
    " Deletes all trailing whitepsace on save
    au BufWritePre * %s/\s\+$//e
    " Make gf work for a URL.  I.e.) file:///C:/myfile.txt
    au BufReadCmd file:///* exe "bd!|edit ".substitute(expand("<afile>"),"file:/*","","")
    " Copyright Year
    au BufNewFile * %s/+YEAR+/\=strftime('%Y')/
    " Today's Date
    au BufNewFile * %s/+TODAY+/\=strftime('%Y-%m-%d')/
    " Insert program name after title
    au BufNewFile * %s/+PRGM NAME+/\=expand('%:t')/
augroup END

augroup filetype_cpp
    au!
    " Un/comment
    au FileType *.cpp noremap <buffer> <LocalLeader>c I// <Esc>
    au FileType cpp noremap <buffer> <LocalLeader>u 03x<Esc>
augroup END

augroup filetype_css
    au!
    au FileType css noremap <buffer> <LocalLeader>c ^i/* <Esc><S-a> */<Esc>
    au FileType css noremap <buffer> <LocalLeader>u ^3x<end>xxx
augroup END

augroup filetype_java
    au!
    " Un/comment
    au FileType java noremap <buffer> <LocalLeader>c I//<Esc>
    au FileType java noremap <buffer> <LocalLeader>u 02x<Esc>
augroup END

augroup filetype_javascript
    au!
    " Un/comment
    au FileType javascript noremap <buffer> <LocalLeader>c I//<Esc>
    au FileType javascript noremap <buffer> <LocalLeader>u 02x<Esc>
augroup END

augroup filetype_html
    au!
    au BufRead,BufNewFile *.html setlocal shiftwidth=2 softtabstop=2
    " Indent Files
    au BufWritePre,BufRead *.html normal gg=G
    " Un/comment
    au FileType html noremap <buffer> <LocalLeader>c I<!--<Esc><S-a>--><esc>
    au FileType html noremap <buffer> <LocalLeader>u ^4x<end>xxx
    au FileType html inoremap <strong> <strong></strong><Esc>%i
    au FileType html inoremap <em> <em></em><Esc>%i
    au FileType html inoremap <h1> <h1></h1><Esc>%i
    au FileType html inoremap <h2> <h2></h2><Esc>%i
    au FileType html inoremap <h3> <h3></h3><Esc>%i
    au FileType html inoremap <h4> <h4></h4><Esc>%i
    au FileType html inoremap <h5> <h5></h5><Esc>%i
    au FileType html inoremap <h6> <h6></h6><Esc>%i
    au FileType html inoremap <p> <p></p><Esc>%i
    au FileType html inoremap <a <a<Space>href="" alt=""></a><Esc>3hi
    au FileType html inoremap <img<SPACE> <img src="" alt="">
    au FileType html inoremap <ul> <ul><CR><li></li><CR></ul><Esc>k2f<i
    au FileType html inoremap <li> <li></li><Esc>%i
    au FileType html inoremap <ol> <ol><CR><li></li><CR></ol><Esc>k2f<i
    au FileType html inoremap <table> <table><CR></table><Esc>k<S-a><CR>
    au FileType html inoremap <thead> <thead><CR></thead><Esc>k<S-a><CR>
    au FileType html inoremap <tbody> <tbody><CR></tbody><Esc>k<S-a><CR>
    au FileType html inoremap <tr> <tr><CR></tr><Esc>k<S-a><CR>
    au FileType html inoremap <th> <th></th><Esc>%i
    au FileType html inoremap <td> <td></td><Esc>%i
augroup END

augroup filetype_python
    au!
    " Un/comment
    au FileType python noremap <buffer> <LocalLeader>c I#<Esc>
    au FileType python noremap <buffer> <LocalLeader>u ^x<Esc>
augroup END

augroup filetype_rst
    au!
    au BufRead,BufNewFile *.rst setlocal noet tw=79 wm=0
    " Un/comment
    au FileType rst noremap <buffer> <LocalLeader>c I.. <Esc>
    au FileType rst noremap <buffer> <LocalLeader>u 03x<Esc>
    " Insert header, section, sub-section, etc under line
    nnoremap y# yyp:.s/./\#/g<CR>:nohl<CR>o<Esc>
    nnoremap y= yyp:.s/./=/g<CR>:nohl<CR>o<Esc>
    nnoremap y- yyp:.s/./-/g<CR>:nohl<CR>o<Esc>
    nnoremap y~ yyp:.s/./\~/g<CR>:nohl<CR>o<Esc>
    " Insert program name
    au BufNewFile *.rst %s/+TITLE+/\=expand('%:r:t')/
augroup END

augroup filetype_sh
    au!
    " Un/comment
    au FileType sh noremap <buffer> <LocalLeader>c I#<Esc>
    au FileType sh noremap <buffer> <LocalLeader>u ^x<Esc>
augroup END

augroup filetype_vim
    au!
    " Un/comment
    au FileType vim noremap <buffer> <LocalLeader>c I"<Esc>
    au FileType vim noremap <buffer> <LocalLeader>u ^x<Esc>
augroup END

" Highlight ExtraWhitespace "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=red
augroup WhitespaceMatch
    " Remove ALL autocommands for the WhitespaceMatch group.
    autocmd!
    autocmd BufWinEnter * let w:whitespace_match_number =
                \ matchadd('ExtraWhitespace', '\s\+$')
    autocmd InsertEnter * call s:ToggleWhitespaceMatch('i')
    autocmd InsertLeave * call s:ToggleWhitespaceMatch('n')
augroup END
function! s:ToggleWhitespaceMatch(mode)
    let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
    if exists('w:whitespace_match_number')
        call matchdelete(w:whitespace_match_number)
        call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
    else
        " Something went wrong, try to be graceful.
        let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
    endif
endfunction

