#!/bin/zsh
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
