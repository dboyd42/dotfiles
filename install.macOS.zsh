#!/bin/zsh
# Copyright 2021 David Boyd, all rights reserved
# Date: 2021-04-23
# For macOS
#  Tested: BigSur, v20.3.0
# Description: Install and link dotfiles

#-----------------#
# Local Variables #
#-----------------#
VDIR="/usr/local/share/vim"      # :echo $VIM
VRT="/usr/local/share/vim/vim82" # :echo $VIMRUNTIME

###---------------###
### Link dotfiles ###
###---------------###
ln -sf $PWD/vim/.vimrc ~/.vimrc              # .vimrc
ln -sf $PWD/vim/* $VDIR/                     # abbrev, src, templates
ln -sf $PWD/scripts/other-dotfiles/.* $HOME/ # gitconfig, tmux.conf, zsh_aliases

# # Concatenate ZSH aliases to ZSHRC file
echo "source ~/.zsh_aliases" >> ~/.zshrc
source ~/.zsh_aliases
echo "You may need to refresh your terminal in order for the aliases to take."

###-----------------------###
### Plug-ins Installation ###
###-----------------------###
# Create local dir for plug-ins
mkdir -p $VRT/pack/plug-ins/start

# Clone plug-in submodules after cloning dotfiles
sudo git submodule update --init --recursive

# Link git plug-in submodules to /start folder
ln -sf $PWD/pack/plug-ins/start/* $VRT/pack/plug-ins/start/

### Other ===================###
# ------------------------#
# YouCompleteMe --Install #
# ------------------------#
# @pre: brew install cmake python mono go nodejs
# @pre: brew install java
# @pre: sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
# @pre: brew install vim    # Note: pre-installed macOS vim != python3
# Compile & Install
sudo python3 $VRT/pack/plug-ins/start/YouCompleteMe/install.py --all
###===========================###

