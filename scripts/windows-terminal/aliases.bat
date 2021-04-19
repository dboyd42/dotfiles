@ECHO OFF

:: Commands
:: ========

:: git
DOSKEY ga=git add
DOSKEY gaR=git add README.rst; git commit -m "updated"; git push
DOSKEY gas=git add . && git status
:: git commit requires double quotes!
DOSKEY gc=git commit -m
DOSKEY gcip=git commit -m "initial commit"; git push
DOSKEY gco=git checkout -b
DOSKEY gcup=git commit -m "updated" && git push
DOSKEY githard=git reset --hard origin/master
DOSKEY gm=git mv
DOSKEY gl=git pull
DOSKEY gp=git push
DOSKEY gr=git reset
DOSKEY gst=git status

:: programs
DOSKEY com=g++ -o main *.cpp
DOSKEY py=python3

::vim
DOSKEY v=vim
DOSKEY vR=vim README.rst

:: Command Directories
:: ===================

DOSKEY gith=cd %USERPROFILE%Documents\code\repos\github\dboyd42

