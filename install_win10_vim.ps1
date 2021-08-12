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

# File: .gitconfig
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\other-dotfiles\.gitconfig'
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
$VPLUG="C:\Users\boydd\.vim\plugged"

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

### "For YCM to run, you need to download: VS Build Tools 2019, cmake, vim+py/dyn, python3, go, node, npm"
curl -L -o C:\Users\$ENV:USERNAME\Downloads\vim.exe https://ftp.nluug.nl/pub/vim/pc/gvim82.exe
curl -L -o C:\Users\$ENV:USERNAME\Downloads\cmake.msi https://github.com/Kitware/CMake/releases/download/v3.21.1/cmake-3.21.1-windows-x86_64.msi
curl -L -o C:\Users\$ENV:USERNAME\Downloads\py3.exe https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe
curl -L -o C:\Users\$ENV:USERNAME\Downloads\go-land.msi https://golang.org/dl/go1.16.7.windows-amd64.msi
curl -L -o C:\Users\$ENV:USERNAME\Downloads\node.msi https://nodejs.org/dist/v14.17.5/node-v14.17.5-x64.msi

# Install the programs
Start-Process C:\Users\$ENV:USERNAME\Downloads\vim.exe
Start-Process C:\Users\$ENV:USERNAME\Downloads\cmake.msi
Start-Process C:\Users\$ENV:USERNAME\Downloads\py3.exe
Start-Process C:\Users\$ENV:USERNAME\Downloads\go-land.msi
Start-Process C:\Users\$ENV:USERNAME\Downloads\node.msi

# Wait for user to verify installation of prgms
$in = Read-host "Once you've installed all the programs, press enter to continue..."

# Automate Vim-Plug installation
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

# Set python3 to python
Set-Alias -Name python3 -Value python
# Set Python as an envVar in SYSTEM path
Start-Process powershell.exe -Verb RunAs | Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $newPath

# Compile & Install
python $VPLUG\YouCompleteMe\install.py --all
# Compile JS & TS features using the TSServer
python $VPLUG\YouCompleteMe\install.py --ts-completer

### Automate Vim-Plug
#iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
#    ni $VRT\vim82\vimfiles\autoload\plug.vim -Force

# Ending message for user
RefreshEnv.cmd

