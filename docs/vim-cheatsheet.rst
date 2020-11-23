Vim Cheatsheet
##############
:Author: David Boyd
:Date: 2020-08-03

These commands are from Vim defaults unless otherwise stated.

From Terminal
*************

Encrypting
==========

.. code-block:: Vim

	# Open file for encryption
	vim -x filename
	<enter passwd>
	<re-enter passwd>

	# Enable stronger encryption
	:setlocal cm=blowfish2

	# Check enryption
	:setlocal cm?

Command Mode
************

Date/Time
=========
:help: help strftime
:URL: https://vim.fandom.com/wiki/Insert_current_date_or_time

.. code-block:: Vim

	  :put =strftime(\"%c\")				// REQUIRES '\' IF using "quotes"
	  :put =strftime('%F')				  2020-09-13
	  :echo strftime("%c")				  Sun Apr 27 11:49:23 1997
	  :echo strftime("%Y %b %d %X")		  1997 Apr 27 11:53:25
	  :echo strftime("%y%m%d %T")			  970427 11:53:55
	  :echo strftime("%H:%M")				  11:55
	  :echo strftime("%c", getftime("file.c"))		//Show mod time of file.c.

set formatoptions
=================
:Canonical: fo\? fo+= fo-=
:Summary: How automatic formatting is to be done.
:Man0: help formatoptions
:Man1: help fo-table
:URL: https://vim.fandom.com/wiki/Automatic_word_wrapping

.. code-block:: Vim

	 " get current formatoptions
	 set fo?
	 " add letter (option/key) to formatoptions
	 set fo+=t		"t	Auto-wrap text using textwidth
	 " rm letter (option/key) from formatoptions
	 set fo-=l		"l	Long lines are not broken in insert mode: When a line
					  "was longer than 'textwidth' when the insert command
					  "started, Vim does not automatically format it.

	 " set textwidth
	 :set tw=79
	 " stop automatic wrapping
	 :set tw=0

	 " wrap margins   (HARD wrap -> inserts a newline at break)
		 " Summary Number of characters from the right window border where
		 " wrapping starts.  When typing text beyond this limit, an <EOL> will
		 " be inserted:set wm=n

	 " wrap linebreak  (SOFT wrap -> prints same-line text on multi lines wo break)
	 :set wrap linebreak
	 " wrap long lines at a chracter in 'break' rather than at the last character
		 " that fits on the screen
	 set lbr  (linebreak)

subsitution
===========
:Summary: Subsitituting chars of unknown length
:URL: https://www.guckes.net/vi/substitute.html

+-------+----------+------------------------------------------------+
| magic | no magic | Description                                    |
+=======+==========+================================================+
| *     | \*       | matches >=0 of the preceeding atom             |
+-------+----------+------------------------------------------------+
| \+    | \+       | matches >=1 of the preceeding atom (not Vi)    |
+-------+----------+------------------------------------------------+
| \-    | \=       | matches 0 OR 1 of the preceeding atom (not Vi) |
+-------+----------+------------------------------------------------+

Examples
--------

.. code-block:: Vim

	.*		.\*		" matches anything, also empty string
	^.\+$	^.\+$	" matches any non-empty string
	foo\=	foo\=	" matches "fo" and "foo"

General Command-Mode Settings
*****************************

.. code-block:: Vim

	"""
	" File Properties
	"""
	g<C-g>		" Display col, line, word cout, bytes

	"""
	" Settings
	"""
	" get setting defaults
	set <setting>?

	" Basic statusline bar (case no plugins)
	set ruler

set 'nrformats' 'nf'
====================
:Summary: Increment/decrement alpha using bin/hex
:Canonical: 'Numbering Formats'
:Man: help nf
:Defaults: set nf=
:Command: set nf=alpha,bin,hex,octal

..code-block:: Vim

	  "Print alphabet

	ia<Esc>qqylp<C-a>q24@q

	ia<Esc>		" Start with 'a'
	qqylp<C-a>q	" @q will duplicate the last char THEN increment
	24@q		" Append c..z

	  "In/Decrement bin,hex

	0b0110			# binary
	0xAF9			# hex

Tabs & Windows
**************
:Association: vimdiff
:Summary: Tabs -> Windows -> Panes (Files)
:Purpose: Resolves additional Tmux implementations

.. code-block:: Bash

	# Open N tab pages.
	vim -p /path/to/file1 /path/to/file2 /path/to/file3

.. code-block:: Vim

	# Open N tabs inside vim
	:tabe [/path/to/file]

	# Navigation/Controls
	:tabs	# list curr tabs/windows
	gt		# g(oto next)t(ab)
	gT		# g(oto prev)T(ab)
	ngt		# n(umber)g(oto)t(ab)
	:tablc[lose]


Insert Mode
***********

.. code-block:: Vim

	"""
	" Digraphs
	"""
	" Special symbols/characters and diacritical marks
	" URL	https://vim.fandom.com/wiki/Entering_special_characters

	<C-k>e!	" è
	<C-k>e'	" é
	<C-k>e>	" ê
	<C-k>e^	" ê
	<C-k>e<	" ě
	<C-k>e:	" ë


	"""
	" Navigating
	"""
	<C-o>j	 " next line; NOTE: !=work with 'matching braces' fns
	<C-o>o	 " previous line
	<C-o>0	 " beginning of line
	<C-o>$	 " EOL
	<C-o>fy	" Find first 'y' after cursor
	<C-o>Ty	" Till first 'y' before cursor
	<C-O> D	" delete everything to the right of cursor

	<C-W>	" delete word to the left of cursor
	<C-U>	" delete everything to the left of cursor
	<C-H>	" backspace/delete
	<C-J>	" insert newline (easier than reaching for the return key)
	<C-T>	" indent current line
	<C-D>	" un-indent current line

Visual Mode
***********

.. code-block:: Vim

	"""
	" File Properties
	"""
	g<C-g>		" Display col, line, word cout, bytes

GUI Vim
*******

set guifont
===========
:gui-menu: set guifont=*
:Default: set guifont?
:syntax: h=height

.. code-block:: Vim

	  set guifont=Courier_New:h10

Tips 'N Tricks
**************

gggqG
-----
:Summary: Reformats entire document to newly set formatoptions, tw, etc.

	- gg: goTo beginning of buffer
	- gq: reformat the text included in the motion
	- G : goTo end of buffer

vimdiff
*******
:Association: Tabs & Windows

.. code-block:: Bash

	# Basic-basic
	vimdiff file1 file2
	vim -d file1 file2			# defaults to vertical split
	vimdiff -o file1 file2		# open in horizontal split mode


.. code-block:: Vim

	# Navigating
	[c		# (goto prev)c(hange)
	]c		# (goto next)c(hange)
	zo		# 'open' a section of folded text
	zc		# 'close' a section of foldable text

	# Editing
	do		# diffo[tain] from other.file to this.file
	dp		# diffp[ut] from this.file to other.file
	:diffupdate				# updates *diff* based on changes

Colors
======
:Note: Colors can be differenct based on your color scheme

+--------+-------------------------------------+
| Color  | Description                         |
+========+=====================================+
| Blue   | new block                           |
+--------+-------------------------------------+
| Purple | differing line                      |
+--------+-------------------------------------+
| Red    | differing characters w/in same line |
+--------+-------------------------------------+

Implementing vimdiff<>tabs
**************************
:Note: buffer next/prev still works within each pane.

.. code-block:: Vim

	# Create new tabedit file1
	:tabe file3
	# Vertical split diffsplit file4
	:vert diffs file4

Internal-Varialbes
******************
:See :help internal-variables

It lists the following types:

	- (nothing) In a function: local to a function; otherwise: global
	- buffer-variable    b:     Local to the current buffer.
	- window-variable    w:     Local to the current window.
	- tabpage-variable   t:     Local to the current tab page.
	- global-variable    g:     Global.
	- local-variable     l:     Local to a function.
	- script-variable    s:     Local to a :source'ed Vim script.
	- function-argument  a:     Function argument (only inside a function).
	- vim-variable       v:     Global, predefined by Vim.

