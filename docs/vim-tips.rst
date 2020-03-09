Vim Tips
########
:Author: David Boyd
:Date: 2020-08-03

These commands are from Vim defaults unless otherwise stated.

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
  
Command Mode
============

.. code-block :: Vim

  """
  " Settings
  """
  set ruler     " Basic statusline bar (case no plugins)
