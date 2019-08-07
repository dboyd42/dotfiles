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
:Download: python3 (Windows Store)
:Download: https://gitforwindows.org/
:gitforwindows: minTTY Terminal, Symbolic Links
:Else: Powershell requires Chocolatey | See Win10's README

Preferred:
----------
#. Download 'git for windows'
    - auto installs into PS & CMD
    - lazy install
#. Download gVim from vim.org
	- checkbox: VisVim Extension for MS Visual Studio
    - install in C:\tools\
#. Open 'Git Bash'/PS as admnistrator
#. $ cd C:\tools\   || ../../tools/
#. git clone https://git@github.com/dboyd42/dotfiles.git

**OPEN CMD/GIT-BASH as ADMIN**
.. code-block:: PowerShell

     cp .vimrc ~/ into _vimrc      // != ln b/c . vs _ ???
     mkdir tools/Vim/abbrev | tools/Vim/src | tools/Vim/templates
     ln -sf *all existing files* into specified loc

.. code-block:: MINGW64

    ln -s ~/../../tools/dotfiles/vim/* ~/../../../usr/share/vim/
