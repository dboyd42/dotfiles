Vim
###
:Author: David Boyd
:Date: SU 2019

File Locations
===============

+-------------+------------------------------+------------------------------+
| Vim Var     | Linux/macOS                  | Windows (Chocolatey)         |
+=============+==============================+==============================+
| $MYVIMRC    | ~/.vimrc                     | %USERPROFILE%_vimrc          |
+-------------+------------------------------+------------------------------+
| $VIM        | /usr/share/vim/              | C:\\Program Files (86x)\\Vim |
+-------------+------------------------------+------------------------------+
| $VIMHOME    | ~/                           | N/A                          |
+-------------+------------------------------+------------------------------+

+---------------------------------------------+-------------------------------------+
| Helpful Vim Commands -> Document References |                                     |
+=============================================+=====================================+
| :echo glob($VIMRUNTIME . '/syntax/\*.vim')  | Lists Vim FileTypes                 |
+---------------------------------------------+-------------------------------------+
| :so $VIMRUNTIME/syntax/hitest.vim           | shows complete list of color groups |
+---------------------------------------------+-------------------------------------+


Plugins
=======

+----------------+---------------------------+
| Plugin         | Description               |
+================+===========================+
| VundleVim      | Plugin Manager            |
+----------------+---------------------------+
| Airline        | Statusline                |
+----------------+---------------------------+
| Ale            | Aysynchronous Lint Engine |
+----------------+---------------------------+
| CtrlP          | Fuzzy Finder              |
+----------------+---------------------------+
| Fugitive       | Git Wrapper               |
+----------------+---------------------------+
| gUndo          | GUI Undo                  |
+----------------+---------------------------+
| NerdTree       | Tree Explorer             |
+----------------+---------------------------+
| Surround       | Surrounding Things        |
+----------------+---------------------------+
| Table-mode     | Table Creator & Formatter |
+----------------+---------------------------+

Install
#######

Linux and macOS
===============

.. code-block :: Bash

	cd ../
	./link-dotfiles.sh

Windows
=======

.. code-block :: Command Prompt

        :: Chocolatey
        choco install vim

        :: Install vim-plugins
        ::      1) Determin Vim's runtime path
        vim +echo $VIMRUNTIME
        ::      2) Create package folder '\pack\bundle\start\'
        mkdir C:\tools\vim\vim82\pack\bundle\start
        :: Clone repositories in start folder
        git clone *.git
        
