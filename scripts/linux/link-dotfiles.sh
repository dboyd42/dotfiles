#!/usr/bin/sh
#
#
#

###
### Directory Structure
###
DIR_CONFIG="$HOME/.config"
DIR_NVIM="$DIR_CONFIG/nvim"
DIR_TMUX="$DIR_CONFIG/tmux"

if [ ! -d $DIR_NVIM ]; then
    echo "Creating $DIR_NVIM directory tree..."
    mkdir -p $DIR_NVIM/{after/plugin,lua,skeletons/{html,markdown,python},spell}
fi
if [ ! -d $DIR_TMUX ]; then
    echo "Creating $DIR_TMUX directory..."
    mkdir -p $DIR_TMUX
fi

###
### Link files
###

