Dotfiles
########
:Author: David Boyd
:Date: Spring 2019

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.

Link Files
==========

For macOS and Linux, just run the **link-dotfiles.sh**.

Win10
-----

If installed with Chocolatey, run **cmd-links.bat** in vim folder.

If using git-bash, open as administrator

.. code-block :: Bash

	# Link dotfiles vimrc and folders
	ln -sf $PWD/vim/.vimrc /c/Users/boydd/_vimrc
	ln -sf $PWD/vim/* /usr/share/vim/

	# Use native vim's package manager
	mkdir /usr/share/vim/vim82/pack/packages
	cd /usr/share/vim/vim82/pack/packages
	git clone https://github.com/dhruvasagar/vim-table-mode
	git clone https://github.com/sjl/gundo.vim
	git clone https://github.com/flazz/vim-colorschemes
	git clone https://github.com/terryma/vim-multiple-cursors
	git clone https://github.com/tpope/vim-fugitive
	git clone https://github.com/tpope/vim-surround
	git clone https://github.com/vim-airline/vim-airline
	git clone https://github.com/dense-analysis/ale

	# link bash aliases
	ln -sf $PWD/bash/.bash_aliases ~/.bash_aliases

