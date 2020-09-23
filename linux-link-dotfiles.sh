#!/bin/bash
# Copyright 2019 David Boyd, all rights reserved
# Program: Link Dotfiles
# Description:
#   This script automates the configuration setup for Vim's dotfiles (and
#   plug-ins), bash_alias,.tmux.conf, and gitconfig.
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
# $VIMRUNTIME = /usr/share/vim/vim81

# Link dotfiles/vim/* to
# Link dotfiles/vim/.vimrc to $HOME/.vimrc
# Link dotfiles/gitconfig to $HOME/.gitconfig
# Link dotfiles/bash/.tmux.conf to $HOME/.tmux.conf
# Link dotfiles/bash/.bash_aliases to $HOME/.bash_aliases

# Dir: abbrev, src, templates           # :echo $VIM
ln -sf $PWD/vim/* $VIM
rm $VIM/.vimrc

# File: vimrc                           # :echo $MYVIMRC
ln -sf $PWD/vim/.vimrc $MYVIMRC

# File: .gitconfig                      # git config --list --show-origin
ln -sf $PWD/gitconfig $HOME/.gitconfig

# File: .tmux.conf
ln -sf $PWD/bash/.tmux.conf $HOME/.tmux.conf

# File: .bash_aliases
ln -sf $PWD/bash/bash_aliases $HOME/.tmux.conf

###
### Plug-ins Installation
###
# Clone plug-in submodules after cloning dotfiles
git submodule update --init

# Create path for plug-ins: vim82/pack/plug-ins/start   //start is used for ln
mkdir -p $VIMRUNTIME/pack/plug-ins/start/

# Link git plug-in submodules to /start folder
ln -sf $PWD/pack/plugin-ins/start/* $VIMRUNTIME/pack/plug-ins/start/

###
### Enable Aliases & Reset Terminal
###
# Enable .bash_aliases through .bashrc
source ~/.bashrc

# Reset terminal
reset

