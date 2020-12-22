# Copyright 2020 David Boyd, all rights reserved
# Program: Windows Link Dotfiles
# Description:
#     This script automates the configuration setup for Vim's dotfiles
#     including plug-ins.
# Note: Admin privileges required for 'SymbolicLink'
# Date: 2020-09-13
# Revised: 2020-12-22 - [~] Failed Pymode plug-in installation
# Revised: 2020-11-22 - Added Microsoft.Powershell.profile.ps1

###
### Link Console Settings
###

# PowerShell $PROFILE
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\windows-terminal\Microsoft.PowerShell_profile.ps1'
$myPath = $ENV:UserProfile + '\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# Windows Terminal
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\windows-terminal\settings.json'
$myPath = $ENV:USERPROFILE + '\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# File: .gitconfig
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\gitconfig'
$myPath = $Env:Userprofile + '\.gitconfig'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

###
### Link Vim files
###
# [[PART 1]]
# If installation is from choco
# If INSTALLATION is from vim.org [[CHANGE LOC->C:\tools\Vim]]
# Link dotfiles\vim\* to C:\tools\vim\
# Link dotfiles\vim\.vimrc to C:\tools\_vimrc
#
# [[PART 2]]
# Vim Plug-ins Installation
# Link pack\plug-ins\start\* to C:\tools\_vimrc

# [[PART 1]] ###
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

# [[PART 2]] ###
# Vim Plug-ins Installation

# Clone plug-in submodules after cloning dotfiles #---UNCOMMENT BELOW if not already done!
# git submodule update

# Create path for plug-ins: vim82\pack\plug-ins\start   //start is used for ln
New-Item -Path 'C:\tools\Vim\vim82\pack\plug-ins\' -ItemType Directory -Force

# Link git plug-in submodules to /start folder
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\pack\plug-ins\start'
$myPath = 'C:\tools\Vim\vim82\pack\plug-ins\start'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

# Rm Pymode
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\pack\plug-ins\start'
$myPath = 'C:\tools\Vim\vim82\pack\plug-ins\start\python-mode'
Remove-Item -Recurse -Force $myPath
# Reinit Pymode (PS treats symlinks differently than Linux)
git submodule update $myTarget

