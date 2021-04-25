# Copyright 2020 David Boyd, all rights reserved
# Program: Windows Link Dotfiles
# Description:
#     This script automates the configuration setup for Vim's dotfiles
#     including plug-ins.
# Note: Admin privileges required for 'SymbolicLink'
# Date: 2020-09-13
# Revised: 2021-04-23 - Updated w/ YCM plug-in
# Revised: 2021-04-22 - Fixed vim-plugins/git-submodules
# Revised: 2020-12-22 - [~] Failed Pymode plug-in installation
# Revised: 2020-11-22 - Added Microsoft.Powershell.profile.ps1

# IMPORTANT !!
# READ BEFORE RUNNING !!
# Install YCM > @pre

###-----------------------###
### Link Console Settings ###
###-----------------------###

# PowerShell $PROFILE
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\scripts\windows-terminal\Microsoft.PowerShell_profile.ps1'
$myPath = $ENV:UserProfile + '\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1'
Remove-Item $myPath
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# Windows Terminal
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\scripts\windows-terminal\settings.json'
$myPath = $ENV:USERPROFILE + '\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
Remove-Item $myPath
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# File: .gitconfig
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\scripts\other-dotfiles\.gitconfig'
$myPath = $Env:Userprofile + '\.gitconfig'
Remove-Item $myPath
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

###--------------###
### Vim Universe ###
###--------------###
# [[PART 1]]
# If installation is from choco
# If INSTALLATION is from vim.org [[CHANGE LOC->C:\tools\Vim]]
# Link dotfiles\vim\* to $VIM
# Link dotfiles\vim\.vimrc to $VIMRUNTIME
#
# [[PART 2]]
# Vim Plug-ins Installation
# Link pack\plug-ins\start\* to C:\tools\_vimrc

#---------------#
# Vim Variables #
#---------------#
$VDIR="C:\Program Files (x86)\Vim"      # :echo $VIM
$VRT="C:\Program Files (x86)\Vim\vim82" # :echo $VIMRUNTIME

# [[PART 1]] ###
# Dir: abbrev
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\abbrev'
$myPath = $VDIR + '\abbrev'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force
# Dir: src
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\src'
$myPath = $VDIR + '\src'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force
# Dir: templates
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\templates'
$myPath = $VDIR + '\templates'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force
# File: vimrc
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\.vimrc'
$myPath = $VDIR + '\_vimrc'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# [[PART 2]] ###
# Vim Plug-ins Installation

# Clone plug-in submodules after cloning dotfiles #---UNCOMMENT BELOW if not already done!
git submodule update --init --recursive

# [mkdir] Create path for plug-ins: vim82\pack\plug-ins\start   //start is used for ln
$plugDir = $VRT + '\pack\plug-ins\'
New-Item -Path $plugDir -ItemType Directory -Force

# Link git plug-in submodules to /start folder
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\pack\plug-ins\start'
$myPath = $VRT + '\pack\plug-ins\start'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

### Other ===================###
# ------------------------#
# YouCompleteMe --Install #
# ------------------------#
# @pre: Install VS Build Tools 2019
#       => https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16
# @pre: cmake => https://cmake.org/download/*.msi
# @pre: vim+py/dyn => https://github.com/vim/vim-win32-installer
# @pre: python3 => https://www.python.org/downloads/
# @pre: go => https://golang.org/doc/install
# @pre: node, and npm
# @pre: echo "set encoding=utf-8" >> ~/.vimrc  //Note: @src/settings.vim

# Compile & Install
python3 $VRT\pack\plug-ins\start\YouCompleteMe\install.py --all
# Compile JS & TS features using the TSServer
python3 $VRT\pack\plug-ins\start\YouCompleteMe\install.py --ts-completer

# Ending message for user
RefreshEnv.cmd
echo "You may need to refresh your terminal in order for the changes to take."

