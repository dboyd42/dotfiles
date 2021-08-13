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
sudo ln -sf $PWD/vim/.vimrc ~/.vimrc              # .vimrc
sudo ln -sf $PWD/vim/* $VDIR/                     # abbrev, src, templates
sudo ln -sf $PWD/scripts/other-dotfiles/.* $HOME/ # gitconfig, tmux.conf, zsh_aliases

# Install prgms
sudo apt install autojump -y

# Concatenate ZSH aliases to ZSHRC file
echo -e "\n\
###-------------------------------------------###\n\
### Imported from dotfiles/.install.linux.zsh ###\n\
###-------------------------------------------###\n\
bindkey '^@' autosuggest-accept # Accept autosuggest through Spacebar\n\
source ~/.zsh_aliases           # Source ZSH aliases\n\
setopt NO_BEEP                  # Annoying beep goes away\n\
. /usr/share/autojump/autojump.sh  # `j` to commonly accessed dirs\n"\
    >> ~/.zshrc
source ~/.zsh_aliases

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
brew install cmake python mono go nodejs
brew install java
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install vim    # Note: pre-installed macOS vim != python3
# Compile & Install
sudo python3 $VRT/pack/plug-ins/start/YouCompleteMe/install.py --all
# Compile JS & TS features using the TSServer
sudo python3 $VRT/pack/plug-ins/start/YouCompleteMe/install.py --ts-completer

# Ending message for user
echo "You may need to refresh your terminal in order for the changes to take."

