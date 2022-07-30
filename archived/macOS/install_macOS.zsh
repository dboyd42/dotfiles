#!/usr/local/bin/zsh
# Copyright 2021 David Boyd, all rights reserved
# Date: 2021-08-11
# For WSL2
# Description: Install and link dotfiles

#-----------------#
# Local Variables #
#-----------------#
VDIR="/usr/local/share/vim"      # :echo $VIM
VRT="/usr/local/share/vim/vim82" # :echo $VIMRUNTIME
VPLUG="$HOME/.vim/plugged/"

###---------------###
### Link dotfiles ###
###---------------###
sudo ln -sf $PWD/vim/.vimrc ~/.vimrc		# .vimrc
sudo ln -sf $PWD/vim/* $VDIR			# abbrev, src, templates
sudo ln -sf $PWD/other-dotfiles/.* $HOME/	# giconfig, tmux.conf, zsh_aliases

# Configure .bashrc
echo "Configuring .bashrc"
touch ~/.bashrc
echo "set bell-style none" >> ~/.bashrc
echo "source ~/.zsh_aliases" >> ~/.bashrc

### Other ===================###
# ------------------------#
# YouCompleteMe --Install #
# ------------------------#
echo "Configuring PlugInstall..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install YCM through PlugInstall
vim -c ':PlugInstall' -c ':q!'

echo "Installing YCM Components..."
# Compile & Install YCM
python3 $VPLUG/YouCompleteMe/install.py --all

####-----------#
#### Oh-My-ZSH #
####-----------#
#### Basic Installation
###echo "Install oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
###
#### Enable Plugins through .zshrc
###echo "Writing plug-ins to .zshrc"
###echo -e "#-----------#\n
#### Oh-My-ZSH #\n
####-----------#\n
###plugins=(\n
###    docker\n
###    git\n
###    hcgraf/zsh-sudo\n
###    autojump\n
###    ael-code/zsh-colored-man-pages\n
###    autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
###     > 1. git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
###     > 2. plugins=(
###             #other plugins...
###             zsh-autosuggestions
###          )
###    )
###ZSH_THEME=\"romkatv\\powerlevel10k\""\
###    >> ~/.zshrc

# Configure .zshrc
echo "Configuring .zshrc ..."
echo -e "\n\
###-------------------------------------------###\n\
### Imported from dotfiles/.install.linux.zsh ###\n\
###-------------------------------------------###\n\
bindkey '^@' autosuggest-accept # Accept autosuggest through Spacebar\n\
source ~/.zsh_aliases           # Source ZSH aliases\n\
setopt NO_BEEP                  # Annoying beep goes away" \
	>> ~/.zshrc

### Powerlevel10k
# Clone the repo
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
echo "source ~/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

### TODO LIST
#Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "You'll need to comment out ~/.zshrc #ZSH_THEME=\"robbyrussel\""
echo "You'll need to add ~/.zshrc: zsh-autosuggestions to the plugin= list"

