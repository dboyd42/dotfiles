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
|
| " Jump between .tpl placeholders
| nnoremap <C-j> /<+.\{-1,}+<CR>c/+/>/e<CR>
| " Reason: Didn't replace text as wanted;
|
| " Match Groups
| "   Reset matches: :match none
| nnoremap <Leader>colwarn :3match LineNr /\%>74v.\+/<CR>
| nnoremap <Leader>colmax :3match ColorColumn /\%>80v.\+/<CR>
| nnoremap <Leader>tabs :3match TabLine /[\t]/<CR>
| " Reason: textwidth replaces %>79; au highlights tabs

Statusline
----------
| Reason: Replaced w/ Plugin airline  --will modify plugin for 'GitBranch()'
| function! GitBranch()
|   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
| endfunction
|
| " Returns the current branch and an empty string if there is no git repository
| function! StatuslineGit()
|   let l:branchname = GitBranch()
|   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
| endfunction
|
| " Set statusline into a true information bar:
| set statusline=
| set statusline+=%#PmenuSel#         " highlight group
| set statusline+=%{StatuslineGit()}  " git branch status
| set statusline+=%#LineNr#           " highlight group
| set statusline+=\ %f                " git directory
| set statusline+=%m\                 " shows '\' in git dirs
| set statusline+=%=                  " Separates statusline
| set statusline+=%#Directory#     " highlight group
| set statusline+=[FORMAT=[%{&ff}]]   " shows format fileType
| set statusline+=\[TYPE=%Y]          " FileType
| set statusline+=\[ASCII=\%03.3b]    " char ascii value
| set statusline+=\[HEX=\%02.2B]      " char hex value
| set statusline+=\[POS=%04l,%04v]    " row, col
| set statusline+=\[%p%%]             " Current percentage position in doc
| set statusline+=\[LEN=%L]
| "set statusline+=%#LineNr#           " highlight group
| "set statusline+=\%F%m%r%h%w         " show local directory

