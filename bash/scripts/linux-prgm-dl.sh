#!/bin/bash

# This script downloads the essential programs used on a Debian based Linux
# distro.

# Update and Upgrade
sudo apt-get update && sudo apt-get upgrade

# Get Productivity Software
# Get Utility Software



sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y gvim
sudo apt-get install -y opera
sudo apt-get install -y chrome
sudo apt-get install -y tree
sudo apt-get install -y traceroute
sudo apt-get install -y dirb
sudo apt-get install -y w3m



# Update and Upgrade newly installed programs
sudo apt-get update && sudo apt-get upgrade
