Vim
###
:Author: David Boyd
:Date: SU 2019

File Locations
===============

+------------+--------------------------------+
| Location   | Linux                          |
+============+================================+
| $VIM       | ~/../../usr/share/vim/         |
+------------+--------------------------------+
| $VIMHOME   | ~/                             |
+------------+--------------------------------+
| $MYVIMRC   | ~/.vimrc                       |
+------------+--------------------------------+
| $VIMRUNTIME| ~/../../usr/share/vim/vim80/   |
+------------+--------------------------------+

+-----------+------------------------------------------------------------------------+
| Helpful Vim Commands -> Document References                                        |
+============================================+=======================================+
| :echo glob($VIMRUNTIME . '/syntax/\*.vim') | Lists Vim FileTypes                   |
+--------------------------------------------+---------------------------------------+
| :so $VIMRUNTIME/syntax/hitest.vim          |  shows complete list of color groups  |
+--------------------------------------------+---------------------------------------+

Unnecessary Code
================


Mapping
-------
| " Enwrap selected word/text in quotes // recursive to line:80
| nmap <Leader>" viWc"<Esc>pf"noh<CR>
| vmap <Leader>" c"<Esc>pf"noh<CR>
| " Reason: Plugin 'topo/vim-surround'

| " Jump between .tpl placeholders
| nnoremap <C-j> /<+.\{-1,}+<CR>c/+/>/e<CR>
| " Reason: Didn't replace text as wanted;

| " Match Groups
| "   Reset matches: :match none
| nnoremap <Leader>colwarn :3match LineNr /\%>74v.\+/<CR>
| nnoremap <Leader>colmax :3match ColorColumn /\%>80v.\+/<CR>
| nnoremap <Leader>tabs :3match TabLine /[\t]/<CR>
| " Reason: textwidth replaces %>79; au highlights tabs
