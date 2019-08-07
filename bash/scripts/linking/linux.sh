#!/bin/bash

# This script is for the initial setup of linking only.
# Any additional files / changes will have to linked separately.
# Example)
# sudo ln -sf ~/Documents/code/repos/github/dboyd42/dotfiles/vim/templates/sh.tpl ~/../../usr/share/vim/templates/sh.tpl

# Link vimrc and vim files
ln -sf ~/Documents/code/repos/github/dboyd42/dotfiles/vim/.vimrc ~/.vimrc
sudo ln -sf ~/Documents/code/repos/github/dboyd42/dotfiles/vim/* ~/../../usr/share/vim/

# Link bash files
ln -sf ~/Documents/code/repos/github/dboyd42/dotfiles/bash/.bash_aliases ~/.bash_aliases

# Verify soft links
echo "Verifying links in directories..."
ls -al ~/
echo "Verifying links for vim files..."
tree -al ~/../../usr/share/vim/abbrev/
tree -al ~/../../usr/share/vim/src/
tree -al ~/../../usr/share/vim/templates/
