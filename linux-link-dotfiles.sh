#!/bin/bash
# Copyright 2019 David Boyd, all rights reserved
# Program: Link Dotfiles
# Description:
#   This script automates the configuration setup for Vim's dotfiles (and
#   plug-ins), bash_aliases,.tmux.conf, and gitconfig.
# Date: 2020-01-17
# Revised:
#    2020-09-22 - revamped to match windows-link-dotfiles
#    2020-02-06 - added gitconfig to Linux
#    2020-01-17 - [+]script-path, [+] git Vundle

# Determine origin of script execution
if [[ "$PWD" != *dotfiles ]]
then
    echo "This script needs to be executed in the 'dotfiles' directory."
    exit
fi

###
### Link dotfiles
###
# $MYVIMRC    = /home/<user>
# $VIM        = /usr/share/vim/
VIM="/usr/share/vim"

if [$(uname -r | cut -d '-' -f2) = "kali1" ]; then
	# Kali  : $VIMRUNTIME = /usr/share/vim/vim82/
	VIMRUNTIME="/usr/share/vim/vim82"
else
	# Ubuntu: $VIMRUNTIME = /usr/share/vim/vim81/
	VIMRUNTIME = /usr/share/vim/vim81/
fi


# Link dotfiles/vim/* to
# Link dotfiles/vim/.vimrc to $HOME/.vimrc
# Link dotfiles/gitconfig to $HOME/.gitconfig
# Link dotfiles/bash/.tmux.conf to $HOME/.tmux.conf
# Link dotfiles/bash/.bash_aliases to $HOME/.bash_aliases

# Dir: abbrev, src, templates           # :echo $VIM
ln -sf $PWD/vim/* $VIM/

# File: vimrc                           # :echo $MYVIMRC
ln -sf $PWD/vim/.vimrc $HOME/.vimrc

# File: .gitconfig                      # git config --list --show-origin
ln -sf $PWD/gitconfig $HOME/.gitconfig

# File: .tmux.conf
ln -sf $PWD/bash/.tmux.conf $HOME/.tmux.conf

# File: .bash_aliases
ln -sf $PWD/bash/.bash_aliases $HOME/.bash_aliases

###
### Plug-ins Installation
###
# Clone plug-in submodules after cloning dotfiles
git submodule update --init

# Create path for plug-ins: vim81/pack/plug-ins/start
mkdir -p $VIMRUNTIME/pack/plug-ins/start/

# Link git plug-in submodules to /start folder
ln -sf $PWD/pack/plug-ins/start/* $VIMRUNTIME/pack/plug-ins/start/

###
### Enable Aliases & Reset Terminal
###
# Enable .bash_aliases through .bashrc
source ~/.bashrc

# Reset terminal
reset

