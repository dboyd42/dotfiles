#!/usr/bin/zsh
# Copyright 2021 David Boyd, all rights reserved
# Date: 2021-04-23
# For WSL2
#  Tested: Kali - Linux, 4.19.128-microsoft-standard
# Description: Install and link dotfiles

# !! IMPORTANT !!
echo "Did you install vim-gtk3? (with python support?!)"
echo "Ie) sudo apt install vim-gtk3"
echo "If no, C-c your ass out of here!"
read


#-----------------#
# Local Variables #
#-----------------#
VDIR="/usr/share/vim"      # :echo $VIM
VRT="/usr/share/vim/vim82" # :echo $VIMRUNTIME

###---------------###
### Link dotfiles ###
###---------------###
sudo ln -sf $PWD/vim/.vimrc ~/.vimrc              # .vimrc
sudo ln -sf $PWD/vim/* $VDIR/                     # abbrev, src, templates
sudo ln -sf $PWD/scripts/other-dotfiles/.* $HOME/ # gitconfig, tmux.conf, zsh_aliases

# # Concatenate ZSH aliases to ZSHRC file
echo "source ~/.zsh_aliases" >> ~/.zshrc
source ~/.zsh_aliases
echo "You may need to refresh your terminal in order for the aliases to take."

###-----------------------###
### Plug-ins Installation ###
###-----------------------###
# Create local dir for plug-ins
sudo mkdir -p $VRT/pack/plug-ins/start

# Clone plug-in submodules after cloning dotfiles
sudo git submodule update --init --recursive

# Link git plug-in submodules to /start folder
sudo ln -sf $PWD/pack/plug-ins/start/* $VRT/pack/plug-ins/start/

### Other ===================###
# ------------------------#
# YouCompleteMe --Install #
# ------------------------#

# Install YCM dependencies
apt install build-essential cmake vim-nox python3-dev -y
apt install mono-complete golang nodejs default-jdk npm -y

# Compile & Install
sudo python3 $VRT/pack/plug-ins/start/YouCompleteMe/install.py --all

