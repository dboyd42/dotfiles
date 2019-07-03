Vim-Templates
#############
:Author: David Boyd
:Date: SU 2019

If using $VIM path, invoke link command as super user ..::

	sudo ln -s ~/path/to/remote/file.tpl
	~/../../usr/share/vim/templates/file.tpl

If reversed paths generate a black template:

# List how the soft link looks ..::

	ls -l <filename>

# Remove link ..::

	unlink ~/path/to/remote/file.tpl
