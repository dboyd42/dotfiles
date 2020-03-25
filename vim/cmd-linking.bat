@ECHO OFF
TITLE Link Vim Files
:: Link vimrc

:: :: This batch file links vim files in the chocolatey's vim locations
:: mklink %USERPROFILE%\_vimrc %CD%\.vimrc
:: :: Link abbrev, src, and templates directories
:: mklink /D C:\tools\vim\abbrev %CD%\abbrev
:: mklink /D C:\tools\vim\src %CD%\src
:: mklink /D C:\tools\vim\templates %CD%\templates

:: This batch file links vim files from the vim.org vim locations
mklink C:\"Program Files (x86)"\_vimrc %CD%\.vimrc
:: Link abbrev, src, and templates directories
mklink /D C:\"Program Files (x86)"\Vim\abbrev %CD%\abbrev
mklink /D C:\"Program Files (x86)"\Vim\src %CD%\src
mklink /D C:\"Program Files (x86)"\Vim\templates %CD%\templates
