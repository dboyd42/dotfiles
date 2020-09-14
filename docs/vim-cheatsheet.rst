Vim Cheatsheet
##############
:Author: David Boyd
:Date: 2020-08-03

These commands are from Vim defaults unless otherwise stated.

From Terminal
=============

Encrypting
----------

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
============

Date/Time
---------
:help: help strftime
:URL: https://vim.fandom.com/wiki/Insert_current_date_or_time

.. code-block:: Vim

    :put =strftime(\"%c\")                // REQUIRES '\' IF using "quotes"
    :put =strftime('%F')                  2020-09-13
    :echo strftime("%c")		          Sun Apr 27 11:49:23 1997
    :echo strftime("%Y %b %d %X")	      1997 Apr 27 11:53:25
    :echo strftime("%y%m%d %T")	          970427 11:53:55
    :echo strftime("%H:%M")	              11:55
    :echo strftime("%c", getftime("file.c"))        //Show mod time of file.c.

set formatoptions
-----------------
:Canonical: fo\? fo+= fo-=
:Summary: How automatic formatting is to be done.
:Man0: help formatoptions
:Man1: help fo-table
:URL: https://vim.fandom.com/wiki/Automatic_word_wrapping

.. code-block:: Vim

   " get current formatoptions
   set fo?
   " add letter (option/key) to formatoptions
   set fo+=t        "t	Auto-wrap text using textwidth
   " rm letter (option/key) from formatoptions
   set fo-=l        "l	Long lines are not broken in insert mode: When a line 
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


General Command-Mode Settings
-----------------------------

.. code-block:: Vim

  """
  " File Properties
  """
  g<C-g>        " Display col, line, word cout, bytes

  """
  " Settings
  """
  " get setting defaults
  set <setting>?

  " Basic statusline bar (case no plugins)
  set ruler     

set 'nrformats' 'nf'
--------------------
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

Insert Mode
===========

.. code-block:: Vim

  """
  " Navigating
  """
  <C-o>j     " next line
  <C-o>o     " previous line
  <C-o>0     " beginning of line
  <C-o>$     " EOL
  <C-o>fy    " Find first 'y' after cursor
  <C-o>Ty    " Till first 'y' before cursor

Visual Mode
===========

.. code-block:: Vim

  """
  " File Properties
  """
  g<C-g>        " Display col, line, word cout, bytes

GUI Vim
=======

set guifont
===========
:gui-menu: set guifont=*
:Default: set guifont?
:syntax: h=height

.. code-block:: Vim

    set guifont=Courier_New:h10

Tips 'N Tricks
==============

gggqG
-----
:Summary: Reformats entire document to newly set formatoptions, tw, etc.

	- gg: goTo beginning of buffer
	- gq: reformat the text included in the motion
	- G : goTo end of buffer

