# Copyright 2020 David Boyd, all rights reserved
# Program: Windows Link Dotfiles
# Description:
#     This script automates the configuration setup for Vim's dotfiles
#     including plug-ins.
# Note: Admin privileges required for 'SymbolicLink'
# Date: 2020-09-13
# Revised: 2021-08-13 - Revamped Plug-Ins; Mv native vim-plug
# Revised: 2021-04-23 - Updated w/ YCM plug-in
# Revised: 2021-04-22 - Fixed vim-plugins/git-submodules
# Revised: 2020-12-22 - [~] Failed Pymode plug-in installation
# Revised: 2020-11-22 - Added Microsoft.Powershell.profile.ps1

###------------------###
### Install Programs ###
###------------------###
###   YCM Dependencies:
<# [DEBUG] Files not downloading properly.
		curl -L -o <local> <url> # was working
		iwr -useb <url> | ni <local> # file corrupted
### Download the programs ###
# VS Build Tools 2019
iwr -useb "https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&rel=16" |`
ni C:\Users\$ENV:USERNAME\Downloads\vs2019.exe

# gVim (with Python3 x64 support)
iwr -useb https://github.com/vim/vim-win32-installer/releases/download/v8.2.3336/gvim_8.2.3336_x64_signed.exe |`
ni C:\Users\$ENV:USERNAME\Downloads\vim.exe

# CMake
iwr -useb https://github.com/Kitware/CMake/releases/download/v3.21.1/cmake-3.21.1-windows-x86_64.msi |`
ni C:\Users\$ENV:USERNAME\Downloads\cmake.msi

# Python3
iwr -useb https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe |`
ni C:\Users\$ENV:USERNAME\Downloads\py3.exe

# Go-lang
iwr -useb https://golang.org/dl/go1.16.7.windows-amd64.msi |`
ni C:\Users\$ENV:USERNAME\Downloads\go-lang.msi

# NodeJS + NPM
iwr -useb https://nodejs.org/dist/v14.17.5/node-v14.17.5-x64.msi |`
ni C:\Users\$ENV:USERNAME\Downloads\node.msi

# JDK 11 is required for LTS
iwr -useb https://www.oracle.com/java/technologies/javase-jdk11-downloads.html#license-lightbox |`
ni $HOME\Donwloads\jdk11.exe

# JDK 16
iwr -useb https://download.oracle.com/otn-pub/java/jdk/16.0.2%2B7/d4a915d82b4c4fbb9bde534da945d746/jdk-16.0.2_windows-x64_bin.exe |`
ni C:\Users\$ENV:USERNAME\Downloads\jdk16.exe

# Install the programs
$in = "VS Code 2019: [Install] Workloads > C++ build tools"
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\vs2019.exe
$in = "Vim: [Install] Full with default mappings."
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\vim.exe
$in = "CMake: [Install] Defaults"
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\cmake.msi
$in = "Py3: [Install] Add to PATH, FULL installation"
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\py3.exe
$in = "Go-Lang: [Install] Defaults"
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\go-lang.msi
$in = "NodeJS: [Install] Defaults"
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\node.msi
$in = "JDK 11: [Install] Defaults"
$in = "Press enter to continue"
Start-Process $HOME\Downloads\jdk11.exe
$in = "JDK 16: [Install] Defaults"
$in = "Press enter to continue"
Start-Process C:\Users\$ENV:USERNAME\Downloads\jdk16.exe

# Wait for user to verify installation of prgms
$in = Read-host "Once you've installed all the programs, press enter to continue..."
#>

echo "..."
echo "..."
echo "Computer needs to be restarted to affirm all environment vars have been initiated."
echo "Upon log in, run ./install_win10_vim-02.ps1"
$in "Press enter to restrt computer..."
shutdown /r /t 0

