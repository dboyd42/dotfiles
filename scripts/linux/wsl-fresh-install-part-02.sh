#!/bin/bash
# Copyright 2021 David Boyd, all rights reserved

# Install required fonts for Powerlevel10k theme
#   --check win-terminal: MesloLGS NF

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install ZSH plugins
#   zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#   zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Update the theme name inside .zshrc file
sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/' ~/.zshrc
# Update the plugins inside .zshrc file
sed -i 's/=(git)/=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

echo '----------------------------------------'
echo ' RESTART your terminal.... (not reset!) '
echo '----------------------------------------'
echo 'IF font is jacked up, refer->MesloLGS NF'
echo 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
echo '----------------------------------------'

