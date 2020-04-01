@ECHO OFF
:: site: https://stackoverflow.com/questions/20530996/aliases-in-windows-command-prompt
:: Make Persistent
:: 1) regedit -> HKEY_CURRENT_USER\Software\Microsoft\Command Processor
:: 2) add 'String Value' entry w/ name 'AutoRun' and the FULL/path/to/aliases.cmd
:: NOTES: Run multi cmds: parallel '&'; after 1st cmd '&&'

:: Commands
:: ========

:: git
DOSKEY ga=git add
DOSKEY gaR=git add README.rst; git commit -m "updated"; git push
DOSKEY gas=git add . && git status
:: DOSKEY gc=git commit -m  :: asks for a "value"
:: git commit requires double quotes!
DOSKEY gcip=git commit -m "initial commit"; git push
DOSKEY gco=git checkout -b
DOSKEY gcup=git commit -m "updated" && git push
DOSKEY githard=git reset --hard origin/master
DOSKEY gm=git mv
DOSKEY gl=git pull
DOSKEY gp=git push
DOSKEY gr=git reset
DOSKEY gst=git status

::vim
DOSKEY v=vim
DOSKEY vR=vim README.rst

:: Command Directories
:: ===================

DOSKEY gith=cd %USERPROFILE%Documents\code\repos\github\dboyd42

