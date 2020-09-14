

#Start-Process Powershell.exe -Verb runAs


###
### Link dotfiles
###
# Admin privileges required

# Link $MYVIMRC == C:\tools\_vimrc
#$myTarget = $Env:Userprofile + '\Documents\code\repos\github\dboyd42\dotfiles\vim\.vimrc'
#$myPath = 'C:\tools\_vimrc'
#New-Item -ItemType SymbolicLink -Path $myPath -Target $myTarget

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













