# Admin privileges required
#Start-Process Powershell.exe -Verb runAs

###
### Link dotfiles
###

# $VIMRUNTIMEPATH == C:\tools\vim\vim82\
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\abbrev'
$myPath = 'C:\tools\vim\abbrev'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\src'
$myPath = 'C:\tools\vim\src'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\templates'
$myPath = 'C:\tools\vim\templates'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget
# Link $MYVIMRC == C:\tools\_vimrc
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\.vimrc'
$myPath = 'C:\tools\vim\_vimrc'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget

###
### Plug-ins Installation
###

# Create path for plug-ins: vim82\pack\plug-ins\start   //start is used for ln
New-Item -Path 'C:\tools\vim\vim82\pack\plug-ins\' -ItemType Directory

# Link git submodules to /start folder
$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\pack\plug-ins\start'
$myPath = 'C:\tools\vim\vim82\pack\plug-ins\start'
New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget

