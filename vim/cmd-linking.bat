:: @ECHO OFF
TITLE Link Vim Files
:: reference: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/mklink

:: ::
:: :: This section links vim files in the vim.org's locations
:: ::	-> C:\"Program Files (x86)"\Vim\

:: Haven't found a way to force overwrite files and directories
::   /s deletes the file(s) from all subdirectories
::   /q disables Yes/No prompting
rmdir /s /q C:\"Program Files (x86)"\Vim\abbreV C:\"Program Files (x86)"\Vim\src C:\"Program Files (x86)"\Vim\templates
del /q C:\"Program Files (x86)"\Vim\_Vimrc

:: Link files
::   %~dp0 resolves to the full path of the folder in which the batch script resides.
::   /D directory SYMLINK
mklink C:\"Program Files (x86)"\_vimrc %~dp0.vimrc
mklink /D C:\"Program Files (x86)"\Vim\abbrev %~dp0abbrev
mklink /D C:\"Program Files (x86)"\Vim\src %~dp0src
mklink /D C:\"Program Files (x86)"\Vim\templates %~dp0templates

:: ::
:: :: This section links vim files in the chocolatey's vim locations
:: ::   -> C:\tools\vim\
:: ::

:: Haven't found a way to force overwrite files and directories
::   /s deletes the file(s) from all subdirectories
::   /q disables Yes/No prompting
rmdir -r C:\tools\vim\abbrev C:\tools\vim\src C:\tools\vim\templates
del /q C:\tools\vim\_vimrc

:: Link files
::   %~dp0 resolves to the full path of the folder in which the batch script resides.
::   /D directory SYMLINK
mklink C:\tools\vim\_vimrc %~dp0.vimrc
mklink /D C:\tools\vim\abbrev %~dp0abbrev
mklink /D C:\tools\vim\src %~dp0src
mklink /D C:\tools\vim\templates %~dp0templates

:: ::
:: :: Display SYMLINKs to user
:: :: 
dir C:\tools\vim
PAUSE

