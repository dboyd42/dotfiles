#!/bin/bash
# Copyright 2021 David Boyd, all rights reserved

# Install preliminary programs
sudo apt-get install vim-gtk3 -y
sudo apt-get install tree -y

###
### Install Killer-Ass-Prompt
###
# Install ZSH
sudo apt-get install zsh
# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k setup
reset

# Install required fonts for Powerlevel10k theme
#   --check win-terminal: MesloLGS NF

