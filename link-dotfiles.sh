#!/bin/bash
# Copyright 2019 David Boyd, all rights reserved
# Program: Link Dotfiles
# Description:
#     Soft links all the dotfiles.
#     Installs Vundle Vim pkg mgr.
#     Uses Vim native pkg mgr
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

# Assign paths to source files
bashAliases="$PWD/bash/.bash_aliases"
tmuxconfig="$PWD/bash/.tmux.conf"
gitconfig="$PWD/gitconfig"

# Determine OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     # Assign vars
                usrVimPath="/usr/share/vim/"
                # Link files
                echo "source ~/.bash_aliases" >> ~/.bashrc
                ln -sf $bashAliases ~/.bash_aliases
                ln -s $gitconfig /etc/gitconfig
                ls -s $tmuxconfig ~/.tmux.conf
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
echo "Linking dotifles..."
ln -sf $PWD/vim/.vimrc ~/.vimrc
ln -sf $PWD/vim/* $usrVimPath

# Install plugins
#echo "cloning VundleVim..."
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim +PluginInstall +qall

# Vim's Native Package Manager
#   start: auto loads plugins
#   opt: plugins are not loaded automatically
#       [+] to add plugins from opt, use ':packadd <packagename>'
echo "Creating folder for plugins"
mkdir -p ~/.vim/pack/my-plugins/{start,opt}
echo -e "Done\n"
echo "Cloning repositories"
cd ~/.vim/pack/my-plugins/start/
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/dhruvasagar/vim-table-mode
git clone https://github.com/sjl/gundo.vim
git clone https://github.com/flazz/vim-colorschemes
git clone https://github.com/terryma/vim-multiple-cursors
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/tpope/vim-surround
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/dense-analysis/ale

# Source files
source ~/.bashrc

# Reset terminal
reset

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
ls -al ~/.vim/pack/my-plugins/start/

