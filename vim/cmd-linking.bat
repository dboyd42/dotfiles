@ECHO OFF
:: This batch file links vim files in the chocoaltey's vim locations
TITLE Link Vim Files
:: Link vimrc
mklink C:\Users\%username%\_vimrc %cd%\.vimrc
:: Link abbrev, src, and templates directories
mklink /D C:\tools\vim\abbrev %cd%\abbrev
mklink /D C:\tools\vim\src %cd%\src
mklink /D C:\tools\vim\templates %cd%\templates

