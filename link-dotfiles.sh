#!/bin/bash
# Copyright 2019 David Boyd, all rights reserved
# Program: Link Dotfiles
# Description:
#     Soft links all the dotfiles.
#     Installs Vundle Vim pkg mgr.
# Date: 2020-01-17
# Revised:
#    2020-02-06 - added gitconfig to Linux
#    2020-01-17 - [+]script-path, [+] git Vundle

# Determine origin of script execution
if [[ "$PWD" != *dotfiles ]]
then
    echo "This script needs to be executed in the 'dotfiles' directory."
    exit
fi

# Determine OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     usrVimPath="/usr/share/vim/"
                bashAliases="$PWD/bash/.bash_aliases"
                gitconfig="$PWD/gitconfig"
                ln -sf $bashAliases ~/.bash_aliases
                ln -s $gitconfig /etc/gitconfig
                ;;
    Darwin*)    usrVimPath="/usr/local/share/vim/*"
                bashProfile="bash/macOS/.bash_profile"
                ln -sf $bashProfile ~/.bash_profile
                cp ./bash/.bash_aliases ~/.bash_aliases
                ;;
    *)          echo "OS cannot be determined."
                exit
                ;;
esac

# Link Vim dotfiles
echo "linking dotifles..."
ln -sf $PWD/vim/.vimrc ~/.vimrc
ln -sf $PWD/vim/* $usrVimPath
# Install plugins
echo "cloning VundleVim..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo

# Verify and Display links
echo "Checking links"
echo "=============="
if [ $unameOut == "Linux" ]
then
    ls -al ~/.bash_aliases
else
    ls -al ~/.bash_profile
fi
ls -al ~/.vimrc
ls -al $usrVimPath | grep -w 'abbrev\|src\|templates'

