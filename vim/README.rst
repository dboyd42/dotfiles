Vim
###
:Author: David Boyd
:Date: SU 2019

File Locations
===============

+------------+--------------------------------+------------------------------+
| Location   | Linux                          | Windows                      |
+============+================================+==============================+
| $VIM       | ~/../../usr/share/vim/         | C:\\Program Files (86x)\\Vim |
+------------+--------------------------------+------------------------------+
| $VIMHOME   | ~/                             | N/A                          |
+------------+--------------------------------+------------------------------+
| $MYVIMRC   | ~/.vimrc                       | C:\\Users\\<host>\\.vimrc    |
+------------+--------------------------------+------------------------------+
| $VIMRUNTIME| ~/../../usr/share/vim/vim80/   | N/A                          |
+------------+--------------------------------+------------------------------+

+-----------+------------------------------------------------------------------------+
| Helpful Vim Commands -> Document References                                        |
+============================================+=======================================+
| :echo glob($VIMRUNTIME . '/syntax/\*.vim') | Lists Vim FileTypes                   |
+--------------------------------------------+---------------------------------------+
| :so $VIMRUNTIME/syntax/hitest.vim          |  shows complete list of color groups  |
+--------------------------------------------+---------------------------------------+

Plugins
=======

+----------+---------------+
| Program  | Plugin        |
+==========+===============+
| Vim_     | - Airline_    |
+----------+ - Ale_        |
|          | - CtrlP_      |
|          | - Fugitive_   |
|          | - Surround_   |
|          | - Table-mode_ |
|          | - Ultisnips_  |
|          | - Vinegar_    |
+----------+---------------+

Install
-------

macOS:

.. code-block:: Bash

	$ brew install make
	$ softwareupdate -i -a
	$ brew install vim
	$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Linux:

.. code-block:: Bash

	$ sudo apt-get update | upgrade
	$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	
Windows:

:Download: https://gitforwindows.org/
:Enable: minTTY Terminal, Symbolic Links
:Else: Powershell requires Chocolatey | See Win10's README

	
	
