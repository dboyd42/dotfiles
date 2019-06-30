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

Directory Browsing (netrw)
==========================
:NERDTree: Not needed
:netrw: Default directory browser

+--------------+---------------------------+
| Key          | Description               |
+==============+===========================+
| Ex, Sex, Vex | Explorer, Split, Vertical |
+--------------+---------------------------+
| i            | cycle through views       |
+--------------+---------------------------+
| :tabnew path | opens file in new tab     |
+--------------+---------------------------+

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
+----------+------+---------------------------------------------------+
| tags /^pattern* | search for ctag pattern                           |
+-----------------+---------------------------------------------------+


Bash Installations
==================

:vim-gtk3: For using '+' register for clipboard
:ctags: Quick navigation of programmer's dictionary/keywords

Settings
========

+----------------------------------+---------------------------------------+
| Vim Command-Line                 |                                       |
+==================================+=======================================+
| so $VIMRUNTIME/syntax/hitest.vim |  shows complete list of color groups  |
+----------------------------------+---------------------------------------+

Additional Information
======================

:Ctags: https://andrew.stwrt.ca/posts/vim-ctags/
:Tagbar: http://majutsushi.github.io/tagbar/ nnoremap <F8> :TagbarToggle<CR>
