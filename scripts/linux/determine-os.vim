" Determine OS
" Execute vimscript :so %
if has('win32')
    echom "Someone please open the Window(s)!"
elseif has('unix')
    echom "unix mf"
elseif('macunix')
    echom 'macunix biatch'
endif

