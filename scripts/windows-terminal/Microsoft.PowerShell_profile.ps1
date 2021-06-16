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
# To edit aliases:
#  1. access: vim $PROFILE
#  2. Refresh shell: exit and re-open.
#     - Note: RefreshEnv.exe does NOT work!

### [[ DIRECTORIES ]] ###
#-----------------------#
function sans { Set-Location "$ENV:USERPROFILE\OneDrive\Documents\education\sans\" }
function wgu { Set-Location "$ENV:USERPROFILE\OneDrive\Documents\education\wgu\" }
function sbox { Set-Location "$ENV:USERPROFILE\OneDrive\Documents\sandbox\" }
function gith { Set-Location "$ENV:USERPROFILE\Documents\code\repos\github\dboyd42\" }

# WSL Github
function wgith {
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
