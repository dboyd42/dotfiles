Dot Files
###########
:Author: David Boyd
:Date: Spring 2019

This repository is a cache for my personal dotfiles.

Link Files
==========

For macOS and Linux, just run the **link-dotfiles.sh**.

Win10
-----

.. code-block :: Powershell

	New-Item -ItemType SymbolicLink -Path .link -Target .Notice.txt $link | Select-Object LinkType, Target

Additional Information
----------------------
:N/A: N/A
