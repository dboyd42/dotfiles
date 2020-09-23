Dotfiles
########
:Author: David Boyd
:Date: Spring 2019

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.

Included Plug-ins
=================

+------------+---------------------------+------------------------+
| Plug-in    | Description               | Practicality           |
+============+===========================+========================+
| Airline    | Fancy-schmancy Statusline |                        |
+------------+---------------------------+------------------------+
| Fugitive   | Git Wrapper               | Allows gVim to use Git |
+------------+---------------------------+------------------------+
| Surround   | Surrounding Things        |                        |
+------------+---------------------------+------------------------+
| Table-Mode | Table Creator & Formatter | RST/MD files           |
+------------+---------------------------+------------------------+

Linux
=====

** Run as root**

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

