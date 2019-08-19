#!/bin/bash

# This script downloads the essential programs used on a Debian based Linux
# distro.

# Update and Upgrade
sudo apt-get update && sudo apt-get upgrade

### System Software ###
## Utility Programs
## Language Translators
  # Dis/assemblers
sudo apt-get install -y nasm
  # Compilers
sudo apt-get install -y build-essential
   # AVR Development Tools
sudo apt-get install binutils-avr
sudo apt-get install gcc-avr
sudo apt-get install avr-libc
sudo apt-get install avrdude
  # Interpreters
sudo apt-get install python3
sudo apt-get install ptyhon3-tk  # Turtle graphics
## Libray Programs
  # Package Mangers
  sudo apt install apt-transport-https curl


### Application Software ###
## General-Purpose Software
 # IDE
umake ide arduino
 # Productivity Software
sudo apt-get install -y vim
sudo apt-get install -y vim-gtk
## Special-Purpose Software
 # Developer Tools
sudo apt-get install -y git
sudo apt-get install -y ubuntu-make
 # Lint
pip3 install cpplint
 # Listing (Directory)
sudo apt-get install -y tree
 # Networking
sudo apt-get install -y traceroute
 # Shells
sudo apt-get install -y terminator
sudo apt-get install -y tmux
 # Web Content Scanner
sudo apt-get install -y dirb
# Web Broswers
sudo apt-get install -y opera
sudo apt-get install -y chrome
sudo apt-get install -y w3m
 # Brave
 curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
 source /etc/os-release
 echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
 sudo apt update
 sudo apt install brave-browser
##Bespoke Applications

### Update and Upgrade newly installed programs ###
sudo apt-get update && sudo apt-get upgrade
