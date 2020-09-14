Dotfiles
########
:Author: David Boyd
:Date: Spring 2019

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.


Windows
=======

**Run as administrator** PowerShell

.. code-block:: PowerShell

   # Allow 3rd Party Scripts to be ran (You're the 3rd Party)
   Set-ExecutionPolicy RemoteSigned

   # Run the script
   # in-progress

   # Restore ExecutionPolicy defaults (if you want to)
   Set-ExecutionPolicy Restricted

Execution Policies
------------------

Restricted
	stops any script from running

RemoteSigned (Recommended)
	allows scripts created on the device, but scripts created on another computer won't run unless they include a trusted digital signature.

AllSigned
	all the scripts will run, but only if a trusted publisher has sign them.

Unrestricted
	runs any script without any restrictions.

