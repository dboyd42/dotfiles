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

	:: Install Chocolatey (https://chocolatey.org/docs/installation)
	@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

	:: Install Chocolatey GUI (for Git CLI) (https://chocolatey.org/packages/ChocolateyGUI)
	choco install chocolateygui -y
	shutdown /r

	:: Install git --Requires Chocolatey GUI (https://chocolatey.org/packages/git)
	:: Install vim (https://chocolatey.org/packages/vim)

	:: Create soft links
	cmd-links.bat

	:: Clone Vundle.git to C:\Users\%USER_PROFILE%\
	git clone

