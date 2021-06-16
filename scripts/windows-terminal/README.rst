README
#######
:Author: David Boyd
:Date: 2020-06-05
:Summary: These files are for Windows Terminal in conjuction with WSL

Windows Terminal
================

Installation
------------

Microsoft Store

Settings
--------

Location
~~~~~~~~
:Cmd: %USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
:PowerShell: ~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
:filename: settings.json

+---------------------------------------------------------------------+----------------------------+
| Profile Path (Microsoft.Powershell_profile.ps1)                     | Scope                      |
+=====================================================================+============================+
| ::> $Home[My ]Documents\PowerShell\Microsoft.PowerShell_profile.ps1 | Current user, Current Host |
+---------------------------------------------------------------------+----------------------------+
| $Home[My ]Documents\PowerShell\Profile.ps1                          | Current User, All Hosts    |
+---------------------------------------------------------------------+----------------------------+
| $PsHome\Microsoft.PowerShell_profile.ps1                            | All Users, Current Host    |
+---------------------------------------------------------------------+----------------------------+
| $PsHome\Profile.ps1                                                 | All Users, All Hosts       |
+---------------------------------------------------------------------+----------------------------+

Notes
=====

Aliases must be done in `vim $profile` which is located in
`~\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`.

To-Do List
**********

Link OneDrive $profile to PS script.

