Dotfiles
########
:Author: David Boyd
:Date: Spring 2019

This repository holds my dotfiles for Linux, macOS, and Windows with
an emphasis on Vim configurations.

Link Files
==========

For macOS and Linux, just run the **link-dotfiles.sh**.
	- *In progress: Moving from Vundle to Native Vim plugin mgr*

Win10
-----

If installed with Chocolatey, run **cmd-links.bat** in vim folder.

If using git-bash, open as administrator

.. code-block :: Bash

	# Link dotfiles vimrc and folders
	cd dotfiles/vim/
	ln -sf $PWD/vim/.vimrc /c/tools/vim/_vimrc
	for folder in */; do ln -sf $PWD/*/ /c/tools/vim/; done

	# Use native vim's package manager
	mkdir /usr/share/vim/vim82/pack/bundle/start/
	cd /usr/share/vim/vim82/pack/bundle/start/
	# run the plugin-list.txt file as a .bat file

	# link system dotfiles
	ln -sf $PWD/bash/.bash_aliases ~/.bash_aliases
	ln -sf $PWD/bash/.tmux.conf ~/.tmux.conf
	ln -sf $PWD/gitconfig ~/.gitconfig

