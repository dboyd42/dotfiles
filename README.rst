Dotfiles
########
:Author: David Boyd
:Date: Spring 2019

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.

Included Plug-ins
*****************

+-----------------+-----------------------------+--------------------------------+
| Plug-in         | Description                 | Practicality                   |
+=================+=============================+================================+
| Airline         | Fancy-schmancy Statusline   |                                |
+-----------------+-----------------------------+--------------------------------+
| Codi            | RunTime Interpreter/Wrapper | Codi!!, Codi!                  |
+-----------------+-----------------------------+--------------------------------+
| Fugitive        | Git Wrapper                 | Allows gVim to use Git         |
+-----------------+-----------------------------+--------------------------------+
| [-] Python-Mode | a Ptyhon IDE for Vimmerz    | <leader>r ; :PymodeLint        |
+-----------------+-----------------------------+--------------------------------+
| Surround        | Surrounding Things          |                                |
+-----------------+-----------------------------+--------------------------------+
| Table-Mode      | Table Creator & Formatter   | RST/MD files                   |
+-----------------+-----------------------------+--------------------------------+
| YouCompleteMe   | Auto code tab-completion    | NOTE: A revamp of dependencies |
+-----------------+-----------------------------+--------------------------------+

Installation
************
:Note: Installation/Compilation of Vim requires Python3!

ZShell
======

- To autocomplete current directory files: Tab
- To autocomplete suggestions: Ctrl+Spacebar


Vim
===

.. code-block:: Bash

	# Check if Vim's compiled with Python3
	vim --version | grep python

	# IF false; THEN uninstall

	# Use feature-rich Vim with multiple language support
	sudo apt install vim-gtk3

macOS
=====
:Release: BigSur 20.3.0

`sudo./install.macOS.zsh`

Linux
=====

**Run as root**

.. code-block:: Bash

	sudo ./linux-link-dotfiles.sh

Windows
=======

YouCompleteMe --Install
-----------------------
:@pre: Install VS Build Tools 2019 => https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16
:@pre: cmake => https://cmake.org/download/*.msi
:@pre: vim+py/dyn => https://github.com/vim/vim-win32-installer
:@pre: python3 => https://www.python.org/downloads/
:@pre: go => https://golang.org/doc/install
:@pre: node, and npm
:@pre: echo "set encoding=utf-8" >> ~/.vimrc  //Note: @src/settings.vim
:Note: d/l x86 & x64 python3 architectures.

Link Dotfiles
-------------

**Run as administrator** PowerShell

.. code-block:: PowerShell

	# Allow locally created scripts to run
	Set-ExecutionPolicy RemoteSigned

	# Run the Windows linking script
	.\install.windows10.ps1

	# Restore ExecutionPolicy defaults (if you want to)
	Set-ExecutionPolicy Restricted


