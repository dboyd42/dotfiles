Vim
###
:Author: David Boyd
:Date: SU 2019

Keystrokes
==========

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

Ctags will walk through the directory recursively, tagging all source files it
encounters.

.. bash::
	ctags -R .

Installed Plugins
=================

:vim-gtk3: For using '+' register for clipboard
:ctags: for indexing methods, classes, vars, and other ids --storing index in a
:ctags: tags file.

Additional Information
======================

:Snippets: Luke Smith on YouTube/GitHub
:Ctags: https://andrew.stwrt.ca/posts/vim-ctags/
:Tagbar: http://majutsushi.github.io/tagbar/ nnoremap <F8> :TagbarToggle<CR>
