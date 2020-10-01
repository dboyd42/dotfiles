#!/bin/bash
# Copyright 2019 David Boyd, all rights reserved
# Program: Link Dotfiles
# Description:
#   This script automates the configuration setup for Vim's dotfiles (and
#   plug-ins), bash_aliases,.tmux.conf, and gitconfig.
# Date: 2020-01-17
# Revised:
#	2020-09-24 - updating $VimRunTime = vim82;
#	   [BUG]63 - Kali::WSL permission denied; Enter manually
#	   [Resolved] [BUG]37 - Ubuntu::WSL uses vim81
#	2020-09-22 - revamped to match windows-link-dotfiles
#	2020-02-06 - added gitconfig to Linux
#	2020-01-17 - [+]script-path, [+] git Vundle

# Determine origin of script execution
if [[ "$PWD" != *dotfiles ]]
then
	echo "This script needs to be executed in the 'dotfiles' directory."
	exit
fi

###
### Link dotfiles
###
# $MYVimRC	= /home/<user>
# $Vim		= /usr/share/vim/
Vim="/usr/share/vim"
# Ubuntu@WSL uses version Vim81; not Vim82
wsl_ubuntu=$(ls /etc/ | grep ubuntu | cut -d '-' -f1)

if [ $wsl_ubuntu = "ubuntu" ]; then
	# Ubuntu@WSL: $VimRunTime = /usr/share/vim/vim81/
	VimRunTime="/usr/share/vim/vim81/"
else
	# Kali      : $VimRunTime = /usr/share/vim/vim82/
	# Kali@WSL  : $VimRunTime = /usr/share/vim/vim82/
	VimRunTime="/usr/share/vim/vim82"
fi

# Link dotfiles/vim/* to
# Link dotfiles/vim/.vimrc to $HOME/.vimrc
# Link dotfiles/gitconfig to $HOME/.gitconfig
# Link dotfiles/bash/.tmux.conf to $HOME/.tmux.conf
# Link dotfiles/bash/.bash_aliases to $HOME/.bash_aliases

# Dir: abbrev, src, templates		   # :echo $VIM
ln -sf $PWD/vim/abbrev $Vim/
ln -sf $PWD/vim/src $Vim/
ln -sf $PWD/vim/templates $Vim/

# File: vimrc						   # :echo $MYVIMRC
ln -sf $PWD/vim/.vimrc $HOME/.vimrc

# File: .gitconfig					   # git config --list --show-origin
ln -sf $PWD/gitconfig $HOME/.gitconfig

# File: .tmux.conf
ln -sf $PWD/bash/.tmux.conf $HOME/.tmux.conf

# [BUG] Kali@WSL permission denied; Enter manually ############################
# File: .bash_aliases
ln -sf $PWD/bash/.bash_aliases $HOME/.bash_aliases
# [BUG] end ###################################################################

###
### Plug-ins Installation
###
# Clone plug-in submodules after cloning dotfiles
git submodule update --init

# Create path for plug-ins: vim8[12]/pack/plug-ins/start
mkdir -p $VimRunTime/pack/plug-ins

# Link git plug-in submodules to /start folder
ln -sf $PWD/pack/plug-ins/start $VimRunTime/pack/plug-ins/start

###
### Enable Aliases & Reset Terminal
###
# Enable .bash_aliases through .bashrc
#[BUG] Does NOT source bashrc file
source ~/.bashrc

# Reset terminal
reset

