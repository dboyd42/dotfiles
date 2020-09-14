Vim
###
:Author: David Boyd
:Date: SU 2019

File Locations
===============

+-------------+------------------------------+------------------------------+
| Vim Var     | Linux/macOS                  | Windows (Chocolatey)         |
+=============+==============================+==============================+
| $VIM        | /usr/share/vim/              | C:\\Program Files (86x)\\Vim |
|             |                              | C:\\tools\\vim               |
+-------------+------------------------------+------------------------------+
| $MYVIMRC    | ~/.vimrc                     | %USERPROFILE%_vimrc    OR    |
|             |                              | C:\\tools\\vim\\_vimrc       |
+-------------+------------------------------+------------------------------+
| $VIMRUNTIME |                              | C:\\tools\\vim\vim82         |
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

.. code-block:: Bash

Windows
=======

.. code-block:: PowerShell

Execution Policies
==================

Restricted
	stops any script from running

RemoteSigned (Recommended)
	allows scripts created on the device, but scripts created on another computer won't run unless they include a trusted digital signature.

AllSigned
	all the scripts will run, but only if a trusted publisher has sign them.

Unrestricted
	runs any script without any restrictions.

