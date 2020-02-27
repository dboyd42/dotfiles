@ECHO OFF
:: This batch file links vim files in the chocolatey's vim locations
TITLE Link Vim Files
:: Link vimrc
mklink %USERPROFILE%\_vimrc %CD%\.vimrc
:: Link abbrev, src, and templates directories
mklink /D C:\tools\vim\abbrev %CD%\abbrev
mklink /D C:\tools\vim\src %CD%\src
mklink /D C:\tools\vim\templates %CD%\templates

