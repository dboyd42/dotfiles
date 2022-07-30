<# Install Vim pt. II #>
# Description: Linking dotfiles, initiating VPLUG

###-----------------------###
### Link Console Settings ###
###-----------------------###

#### File: .gitconfig     ###
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\other-dotfiles\.gitconfig'
$myPath = $Env:Userprofile + '\.gitconfig'
Remove-Item $myPath
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget -Force

###--------------###
### Vim Universe ###
###--------------###
# Link dotfiles\vim\* to $VIM
# Link dotfiles\vim\.vimrc to $VIM\_vimrc
#
# [[PART 2]]
# Vim Plug-ins Installation

#----------------#
# Vim Link-Files #
#----------------#
$VDIR="C:\Program Files\Vim"      # :echo $VIM
$VRT="C:\Program Files\Vim\vim82" # :echo $VIMRUNTIME

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

#----------#
# Vim-Plug #
#----------#
# $VPLUG plugin location
$VPLUG="C:\Users\boydd\.vim\plugged"

# [[PART 2]]
# Automate Vim-Plug installation // loc: $HOME\vimfiles\autoload\plug.vim
# [SYNTAX] iwr=curl=wget=Invoke-WebRequest -useb=-UseBasicParsing
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

#---------#
# Part 03 #
#---------#
echo "..."
echo "..."
echo "You'll need to of opened Vim and run :PlugInstall"
echo "for YCM to install."
echo "Then run ./install_win10_vim-03.ps1"
echo "..."
echo "..."
$in = "Press enter to continue..."

