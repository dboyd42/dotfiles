Dot Files
###########
:Author: David Boyd
:Date: Spring 2019

This repository is a cache for my personal dotfiles.

Link Files
==========
:Type: symbolic

Bash
----

.. code-block :: Bash

	# Directories
	ln -s /base/* /target/ ** ls -l /target/

	# Single Files
	ln -s Existing-file New-name

	# Overwrite Existing Destination Files
	sudo ln -sf Existing-file New-name

Win10
-----

.. code-block :: Powershell

	New-Item -ItemType SymbolicLink -Path .link -Target .Notice.txt $link | Select-Object LinkType, Target

Additional Information
----------------------
:N/A: N/A
