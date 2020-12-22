Dotfiles
########
:Author: David Boyd
:Date: Spring 2019

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.

Included Plug-ins
*****************

+-------------+---------------------------+-------------------------+
| Plug-in     | Description               | Practicality            |
+=============+===========================+=========================+
| Airline     | Fancy-schmancy Statusline |                         |
+-------------+---------------------------+-------------------------+
| Fugitive    | Git Wrapper               | Allows gVim to use Git  |
+-------------+---------------------------+-------------------------+
| Python-Mode | a Ptyhon IDE for Vimmerz  | <leader>r ; :PymodeLint |
+-------------+---------------------------+-------------------------+
| Surround    | Surrounding Things        |                         |
+-------------+---------------------------+-------------------------+
| Table-Mode  | Table Creator & Formatter | RST/MD files            |
+-------------+---------------------------+-------------------------+

Installation
************
:Note: Installation/Compilation of Vim requires Python3!

Vim
===

.. code-block:: Bash

	# Check if Vim's compiled with Python3
	vim --version | grep python

	# IF false; THEN uninstall

	# Use feature-rich Vim with multiple language support
	sudo apt install vim-nox

Linux
=====

**Run as root**

.. code-block:: Bash

	sudo ./linux-link-dotfiles.sh

Windows
=======

**Run as administrator** PowerShell

.. code-block:: PowerShell

	# Allow locally created scripts to run
	Set-ExecutionPolicy RemoteSigned

	# Run the Windows linking script
	.\windows-link-dotfiles.ps1

	# Restore ExecutionPolicy defaults (if you want to)
	Set-ExecutionPolicy Restricted

TODO
****

1. Move plugin files' dir under vim.

