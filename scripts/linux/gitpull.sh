#!/bin/zsh
# Copyright 2021 David Boyd, all rights reserved
# Run through git directories and pull for updates.
for dir in ./*; do
    if [ -d $dir ];
    then
        echo "["$dir"]:--------------------"
        cd $dir;
        git pull;
        echo
        cd ../;
    fi
done
