#!/bin/bash

# viewing environment variables
echo "The value of the home variable is: "
echo $HOME

# issue a command
echo "The output of the pwd command is: "
pwd

# that's boring, grab output and make it readable
echo "The value of the pwd command is $(pwd)"

# assign command output to a variable
output=$(pwd)
echo "The value of the output variable is ${output}"

# view data on the command line ARGUMENT //-> char** arg
# ./bashscript.sh option option2         // $@ grabs ALL on-screen
# $1 vs ${1} => the 1 is a storage location;
# the {} make it easier to read; but otherwise there is no difference
echo "I saw $@ on the command line (!=include arg[0])"
echo "\$Index0= $0 on the command line"
echo "\$Index1= $1 on the command line"


# read data from the user
echo "Enter a value: "
read userInput
echo "You just entered $userInput"

# concatenate userinput with command output
echo "Enter a file extension: "
read ext
touch "yourfile.${ext}"
ls -al

# check to see if a file exists
# -d = does item exists && is it a directory?  // -d == 'a file check'
#if [ -d /etc/sys ]; then
if [ -d $1 ]; then
        echo "That file is there and a directory"
else
        echo "Not there or not a directory"
fi

# Additional file checks / bash expressions can be found at the link below:
# https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html
