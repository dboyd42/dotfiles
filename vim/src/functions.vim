""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Now, Just Functions! "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fns: auto the section part of +TITLE+
function RST_Title()
    " GOTO 1st line and section title
    normal ggy#
endfunction

" Insert cpp syntax region in file
"   called by mappings.vim: <leader>c
function Cpp_Region()
    syntax include @CPP syntax/cpp.vim
    syntax region cppSnip matchgroup=cppSnipper start="@begin=cpp@"
    \ end="@end=cpp@" contains=@CPP
    hi link cppSnipper SpecialComment
endfunction

" Insert python syntax region in file
"   called by: mappings.vim <leader>p
function Python_Region()
    syntax include @PYTHON syntax/python.vim
    syntax region pythonSnip matchgroup=pySnipper start="@begin=python@"
    \ end="@end=python@" contains=@PYTHON
    hi link pySnipper SpecialComment
endfunction

