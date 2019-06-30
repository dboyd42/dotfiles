Vim Reference
#############
:Author: David Boyd
:Date: SU 2019

Keystrokes
==========

Basics
--------

+-------+---------------------------+
| Key   | Description               |
+=======+===========================+
| :sort | sorts selected text alpha |
+-------+---------------------------+
| `` `. | JMP to last :e cursor pos |
+-------+---------------------------+
| '' '. | JMP to last edit line     |
+-------+---------------------------+

Search and Replace
------------------

+---------+-------------------------------------+
| Key     | Description                         |
+=========+=====================================+
| \.      | select current line                 |
+---------+-------------------------------------+
| \,      | range n,m                           |
+---------+-------------------------------------+
| \.,.+10 | current position plus 10 lines down |
+---------+-------------------------------------+

Directory Browsing
==================
:NERDTree: Not needed

+-------+------------------+
| Prgm  | Descriptio       |
+=======+==================+
| netrw | Default plugin   |
|       | Ex, Sex, Vex     |
|       | i - cycle view   |
|       | :tabnew pwd      |
+-------+-------+----------+
| ctags | <C-]> | JMP def  |
|       | <C-t> | JMP org  |
+-------+------------------+
|       | :tags /^pattern* |
+--------------------------+
| :ts, :tn: :tp, :tf, :tl  |
+-------+------------------+

Ctags
-----

**Step 1**

Invoke ctags command-line program in the directory where your source files 
are placed to create a new file called *tags* that contains information 
about all the functions and variables in your code:
.. bash::
	ctags *.c *.h

Alternatively, Ctags will walk through the directory recursively, tagging all source files it
encounters.
.. bash::
	ctags -R .	

**Step 2**

Tell Vim that s should use the *tags* file, which is done by setting the tags setting:
.. vim::
	:set tags=/path/to/tags
	
+---------------------------------------------------------------------+	
| Ctags Navigation                                                    |
+==========+==========================================================+
| Ctrl-]   | one match == loc fns is defined; else show ls of matches |
+----------+----------------------------------------------------------+
| Ctrl-t   | brings cursor back to original position                  |
+----------+----------------------------------------------------------+
| tags     | show stack                                               |
+----------+----------------------------------------------------------+
| tag      | mv to next tag in stack                                  |
+----------+----------------------------------------------------------+
| pop      | mv to prev tag in stack                                  |
+----------+----------------------------------------------------------+
| tselect  | shows list of matching tags                              |
+----------+----------------------------------------------------------+
| ptselect | shows list in a preview window                           |
+----------+----------------------------------------------------------+
| tnext/tn | move to the next tag in list                             |
+----------+----------------------------------------------------------+
| tprev/tp | mvoe the the prev tag in list                            |
+----------+----------------------------------------------------------+


Installed Plugins
=================

:vim-gtk3: For using '+' register for clipboard
:ctags: for indexing methods, classes, vars, and other ids --storing index in a
:ctags: tags file.

Settings
========

so $VIMRUNTIME/syntax/hitest.vim  --shows complete list of color groups

Additional Information
======================

:Ctags: https://andrew.stwrt.ca/posts/vim-ctags/
:Tagbar: http://majutsushi.github.io/tagbar/ nnoremap <F8> :TagbarToggle<CR>
