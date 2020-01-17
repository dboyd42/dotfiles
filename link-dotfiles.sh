#!/bin/bash
# Copyright 2019 David Boyd, all rights reserved
# Program: Link Dotfiles
# Description:
#     Soft links all the dotfiles.
# Date: 2020-01-17
# Revised:
#     <revision date>

# Determine origin of script execution
scriptPath="dotfiles"

# Make sure your $PWD=../dotfiles
if [$PWD -ne "*dotfiles"]
then
    echo "This script needs to be executed in the $scriptPath"
    exit
fi

# Determine OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os="l"
                usrVimPath="/usr/share/vim/*"
                bashAliases="$PWD/bash/.bash_aliases"
                ln -sf $bashAliases ~/.bash_aliases;;
    Darwin*)    os="m"
                usrVimPath="/usr/local/share/vim/*"
                bashProfile="bash/macOS/.bash_profile"
                ln -sf $bashProfile ~/.bash_profile;;

    *)          echo "OS cannot be determined."
                exit
esac

# Linking Vim dotfiles
ln -sf $PWD/vim/.vimrc ~/.vimrc
ln -sf $PWD/vim/* $usrVimPath
# Install plugins
vim +PluginInstall +qall

# Verify links
echo "Checking links"
echo "=============="
if [ $os == "l" ]
then
    ls -al ~/.bash_aliases
else
    ls -al ~/.bash_profile
fi
ls -al ~/.vimrc
ls -al $usrVimPath | grep -w 'abbrev\|src\|templates'

