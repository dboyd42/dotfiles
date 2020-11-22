###
### Powershell Configurations
###

# Prompt
function prompt {
	# Minimal Prompt
	$Daddy = Split-Path -Path $pwd -Qualifier
	$Toddler = Split-Path -Path $pwd -Leaf
	Write-Host -Object "$Daddy\$Toddler"  -NoNewLine -ForegroundColor Magenta
	return "> "
}

###
### Aliases
###

### CHANGE DIRECTORY ###

# Github repos (C:\ local)
function gith {
    set-location "$ENV:UserProfile\Documents\code\repos\github\dboyd42"
}

# WGU coursework (C:\ OneDrive)
function wgu {
	set-location "$ENV:UserProfile\OneDrive\Documents\education\wgu\"
}

# WSL home (Microsoft.Powershell.COre\FileSystem::)
function wslhome {
    $uzr = wsl.exe whoami
    set-location "\\WSL$\kali-linux\home\$uzr\"
}

