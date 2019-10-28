Vim
###
:Author: David Boyd
:Date: SU 2019

File Locations
===============

+-------------+------------------------------+------------------------------+------------------------+-----------------------+
| Location    | Linux                        | Windows (D/l vim.org)        | MINGW64                | macOS (brew)          |
+=============+==============================+==============================+========================+=======================+
| $VIM        | ~/../../usr/share/vim/       | C:\\Program Files (86x)\\Vim | /usr/share/vim         | /usr/share/local/vim/ |
+-------------+------------------------------+------------------------------+------------------------+-----------------------+
| $VIMHOME    | ~/                           | N/A                          | N/A                    | N/A                   |
+-------------+------------------------------+------------------------------+------------------------+-----------------------+
| $MYVIMRC    | ~/.vimrc                     | C:\\Users\\<host>\\_vimrc    | /c/Users/<Host>/.vimrc | ~/                    |
+-------------+------------------------------+------------------------------+------------------------+-----------------------+
| $VIMRUNTIME | ~/../../usr/share/vim/vim80/ | N/A                          | $VIM/vim81/            | $VIM/vim81/           |
+-------------+------------------------------+------------------------------+------------------------+-----------------------+

+---------------------------------------------+
| Helpful Vim Commands -> Document References |
+=============================================+=====================================+
| :echo glob($VIMRUNTIME . '/syntax/\*.vim')  | Lists Vim FileTypes                 |
+---------------------------------------------+-------------------------------------+
| :so $VIMRUNTIME/syntax/hitest.vim           | shows complete list of color groups |
+---------------------------------------------+-------------------------------------+

Notable Differences Between Platforms
=====================================

+-------------------+-------+-----------------------+---------+--------------+
| Command           | Linux | Windows (D/l vim.org) | MINGW64 | macOS (brew) |
+===================+=======+=======================+=========+==============+
| Sys Clipboard Reg | "+    | "*                    |         |              |
+-------------------+-------+-----------------------+---------+--------------+

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
#######

macOS:
======

.. code-block:: Bash

	$ brew install make
	$ softwareupdate -i -a
	$ brew install vim
	$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Linux:
======
.. code-block:: Bash

	$ sudo apt-get update | upgrade
	$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Windows:
========
:Download: vim.org -> GVim
:Download: python3 (python.org -> better usage with git-bash)
:Download: https://gitforwindows.org/
:gitforwindows: minTTY Terminal, Symbolic Links
:Else: Powershell requires Chocolatey | See Win10's README

Preferred:
----------
#. Clone Vundle.git to C:\Users\%USER_PROFILE%\
#. Download 'git for windows'
    - auto installs into PS & CMD
    - lazy install
#. Download gVim from vim.org
	- checkbox: VisVim Extension for MS Visual Studio
	- install in C:\tools\vim\
#. Download Python3.org
	- amd64 version  // AMD does not stand for AMD CPUs
	- add PATH variable
	- custom install: C:\\tools\\python3\\
#. Open 'Git Bash'/PS as admnistrator
#. $ cd C:\tools\   || ../../tools/
#. git clone https://git@github.com/dboyd42/dotfiles.git

LINKING IN WINDOWS
===================

**OPEN CMD/GIT-BASH as ADMIN**
.. code-block:: PowerShell

	Start-Process powershell -Verb runAs                             # sudo su
	# .\link = C:\tools\dotfiles\vim\.vimrc
	# .\Notice = C:\Users\$evn:USERPROFILE\[_.]vimrc#'_' for gui | '.' for cmd
	$link = New-Item -ItemType SymbolicLink -Path .\link -Target .\Notice.txt
	$link | Select-Object LinkType, Target


.. code-block:: MINGW64

    ln -s ~/../../tools/dotfiles/vim/* ~/../../../usr/share/vim/

NOTE
----

You will have mutliple version of Vim in Windows
    - GVim running in C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\Vim 8.1\\
    - GVim running in C:\\tools\\Vim\\vim81
    - Vim running in C:\\Users\\%USERPROFILE\\

Vimrc file locations:
    - C:\\Users\%USERPROFILE%\\
