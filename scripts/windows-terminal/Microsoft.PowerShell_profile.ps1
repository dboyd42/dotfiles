### =============== ///
### Theme/Powerline ///
###                 ///
# Hide User in Windows Terminal
#$global:DefaultUser = [System.Environment]::UserName

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

###                     ///
### END Theme/Powerline ///
### =================== ///

### ======= ///
### Aliases ///
###         ///

### [[ DIRECTORIES ]] ###
#-----------------------#
# WGU coursework
function wgu {
    Set-Location "$ENV:USERPROFILE\OneDrive\Documents\education\wgu\"
}

# Local Windows Github
function lgith {
    Set-Location "$ENV:USERPROFILE\Documents\code\repos\github\dboyd42\"
}

# Local WSL Github
function gith {
    $WSLGITH = "\\wsl$\kali-linux\home\" `
               + (wsl.exe whoami) `
               + "\Documents\code\repos\github\dboyd42"
    Set-Location $WSLGITH
}
### [[ END DIRECTORIES ]] ###


### [[ COMMANDS ]] ###
#--------------------#

#--Get-ChildItemColor >>>
# >>>
# Installation
# https://github.com/joonro/Get-ChildItemColor
# Install-Module -AllowClobber Get-ChildItemColor

# Ensure that Get-ChildItemColor is loaded
Import-Module Get-ChildItemColor
# Set l and ls alias to use the new Get-ChildItemColor cmdlets
Set-Alias ll Get-ChildItemColor -Option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -Option AllScope
# <<<
#--END Get-ChildItemColor <<<

### [[ END COMMANDS ]] ###

###             ///
### END Aliases ///
### =========== ///
