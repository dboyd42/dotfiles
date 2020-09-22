# Copyright 2020 David Boyd, all rights reserved
# Program: Windows Link Dotfiles
# Description:
#     This script automates the configuration setup for Vim's dotfiles
#     including plug-ins.
# Note: Admin privileges required for 'SymbolicLink'
# Date: 2020-09-13
# Revised:


###
### Link dotfiles
###
# Link dotfiles\vim\* to C:\tools\vim\
# Link dotfiles\vim\.vimrc to C:\tools\_vimrc
# Link dotfiles\vim\.gitconfig to C:\$USER\.gitconfig

# Dir: abbrev
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\abbrev'
$myPath = 'C:\tools\vim\abbrev'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# Dir: src
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\src'
$myPath = 'C:\tools\vim\src'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# Dir: templates
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\templates'
$myPath = 'C:\tools\vim\templates'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# File: vimrc
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\.vimrc'
$myPath = 'C:\tools\vim\_vimrc'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# File: .gitconfig
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\gitconfig'
$myPath = $Env:Userprofile + '\.gitconfig'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

###
### Plug-ins Installation
###
# Clone plug-in submodules after cloning dotfiles
git submodule update --init

# Create path for plug-ins: vim82\pack\plug-ins\start   //start is used for ln
New-Item -Path 'C:\tools\vim\vim82\pack\plug-ins\' -ItemType Directory -Force

# Link git plug-in submodules to /start folder
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\pack\plug-ins\start'
$myPath = 'C:\tools\vim\vim82\pack\plug-ins\start'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

