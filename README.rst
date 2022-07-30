Dotfiles
########
:Author: David Boyd
:Date: Spring 2019
:Revised: Fall 2022

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.

Included Plug-ins
*****************

+-----------------+-----------------------------+--------------------------------+
| Plug-in         | Description                 | Practicality                   |
+=================+=============================+================================+
| Airline         | Fancy-schmancy Statusline   |                                |
+-----------------+-----------------------------+--------------------------------+
| Fugitive        | Git Wrapper                 | Allows gVim to use Git         |
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

Vim
===

*Under revision* - Fall 2022

macOS
=====

*Under revision* - Fall 2022

Linux
=====

*Under revision* - Fall 202

Windows
=======

YouCompleteMe --Install
-----------------------
:@pre: Install VS Build Tools 2019 => https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16
:@pre: cmake => https://cmake.org/download/*.msi
:@pre: vim+py/dyn => https://github.com/vim/vim-win32-installer (x64 arch)
:@pre: python3 => https://www.python.org/downloads/
:@pre: go => https://golang.org/doc/install
:@pre: node (includes: npm)
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


