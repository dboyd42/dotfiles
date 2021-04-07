# Copyright 2021 David Boyd, all rights reserved
# Program: TerminalVim.app
# Description: Opens Terminal > Vim as 'Default App' in Finder
# Date: 2021-04-06

on run {input, parameters}

### Setters ------------------------------------------------------------------#
	# Set path to file
	set filename to POSIX path of input
	# Set directory from parsed path
	set script1 to "dirname '" & filename & "'"
	set dirPath to do shell script script1
	# Set cmd for cmds in Terminal
	set cmd to "clear; cd " & quoted form of dirPath & "; vim " & quoted form of filename

### Run the prgm -------------------------------------------------------------#
	# Open Terminal
	tell application "Terminal"
		activate
		do script cmd
	end tell

end run
