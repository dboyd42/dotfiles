#!/usr/bin/zsh
# Copyright 2021 David Boyd, all rights reserved
# Date: 2021-08-11
# For WSL2
# Description: Install and link dotfiles

#-----------------#
# Local Variables #
#-----------------#
VDIR="/usr/share/vim"      # :echo $VIM
VRT="/usr/share/vim/vim82" # :echo $VIMRUNTIME
VPLUG="$HOME/.vim/plugged/"

###---------------###
### Link dotfiles ###
###---------------###
sudo ln -sf $PWD/vim/.vimrc ~/.vimrc		# .vimrc
sudo ln -sf $PWD/vim/* $VDIR			# abbrev, src, templates
sudo ln -sf $PWD/other-dotfiles/.* $HOME/	# giconfig, tmux.conf, zsh_aliases

# Configure .zshrc
echo -e "\n\
###-------------------------------------------###\n\
### Imported from dotfiles/.install.linux.zsh ###\n\
###-------------------------------------------###\n\
bindkey '^@' autosuggest-accept # Accept autosuggest through Spacebar\n\
source ~/.zsh_aliases           # Source ZSH aliases\n\
setopt NO_BEEP                  # Annoying beep goes away\n" \
	>> ~/.zshrc

### Other ===================###
# ------------------------#
# YouCompleteMe --Install #
# ------------------------#
# Compile & Install
python3 $VPLUG/YouCompleteMe/install.py --all
# Compile JS & TS features using the TSServer
python3 $VPLUG/YouCompleteMe/install.py --ts-completer

