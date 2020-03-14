Vim Cheatsheet
##############
:Author: David Boyd
:Date: 2020-08-03

These commands are from Vim defaults unless otherwise stated.

From Terminal
=============

Encrypting
----------

.. code-block :: Vim

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

.. code-block :: Vim

  """
  " File Properties
  """
  g<C-g>        " Display col, line, word cout, bytes


  """
  " Settings
  """
  set ruler     " Basic statusline bar (case no plugins)

Insert Mode
===========

.. code-block :: Vim

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

.. code-block :: Vim

  """
  " File Properties
  """
  g<C-g>        " Display col, line, word cout, bytes

