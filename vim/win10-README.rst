#################
Windows 10 & Vim
#################
:Author: David Boyd
:Date: SU 2019

The Windows 10 VIMRC file has been adjusted to run all PlugIns.

=====
Setup
=====

This is for PowerShell implementation.  NOT 'Git for Windows', NOT Cygwin, NOT
MingW64.

-------------
Prerequisites
-------------
:Programs: Chocolately (choco)
:Choco: git, curl, Vim

Chocolately is a package manager for Windows that enables software management
automation.

Install Chocolately in PowerShell:

.. code:: Powershell

	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Install Git, cURL, and Vim through Chocolately (running as Administrator):

.. code:: Choco

	choco install -y git
	choco install -y curl
	choco install -y vim
	git --version
	curl --version
	vim --version

Note: PowerShell does not detect curl's version, but its installation can be
verified by attempting to install again.

Create the designated directory and git clone directly into folder:

.. code:: Powershell

	mkdir -p ~\.vim\bundle\
	git clone https://github.com/VundleVim/Vundle.vim.git

Clone dotfiles into %USERPROFILE%:

.. code:: Powershell

	git clone https://git@github.com/dboyd42/dotfiles.git

Lastly, copy the Windows 10 .vimrc file from the clone into %USERPROFILE%:

.. code:: Powershell

	cp ~\dotfiles\vim\win10\.vimrc ~

Note: Symbolic links can be made thorugh a tedious process of calling cmd.exe
/cmklink.exe.  Otherwise, Powershell would require another 3rd party software
which can be found here:
https://learn-powershell.net/2013/07/16/creating-a-symbolic-link-using-powershell/
