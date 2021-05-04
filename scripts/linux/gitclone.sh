#!/bin/bash
# Copyright 2021 David Boyd, all rights reserved
# Run through a list of repos and clone each one into ./ directory.

# Test if 3 CLI args have been supplied
if [[ $# -ne 2 ]]; then
    echo "-------------------------------------------------------------------------"
    echo "Try './gitclone.sh  <username> <reposList.file>'"
    echo "-------------------------------------------------------------------------"
    exit
fi

Username=$1
File=$2

# Test if file exists
if [[ ! -f $File ]]; then
    echo "File not found:" $File
    exit
fi

# Parse File by line(s)
Lines=$(cat $File)

# Run git clone on each line
for Line in $Lines
do
	git clone git@github.com:$Username/$Line
done

