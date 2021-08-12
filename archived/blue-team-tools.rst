blue-team-tools
###############
:Author: David Boyd
:Date: 2020-11-26

Contents
********

	- pff-tools

apt install pff-tools
*********************

Parse PST
=========

There are several open source and freeware tools that can be used to read OST
files. They can also be imported into a ‘clean’ Outlook, such as one inside a
virtual machine.

There are several libraries that can be used to parse PST/OST files and access
their contents too; this is achieved programmatically using scripting languages
such as Python.

LIBPFF
======

libpff is a library used to access the Personal Folder File (PFF) and the
Offline Folder File (OFF) format. It contains a series of command line tools
and also exposes an API that can be used to interact with scripting languages
such as Python.

Pffexport
=========

Pffexport is a command line tool that is part of the libpff installation. It
can be used to extract all the information from a PST/OST file.

Emails are extracted in a hierarchical folder structure that matches the
Outlook inbox layout. This includes deleted items and calendar entries or notes
if they are also synced to Outlook.

A typical message extracted contains the following files:

	- ConversationIndex.txt
	- InternetHeaders.txt
	- Message.txt
	- OutlookHeaders.txt
	- Recipients.txt
	- Attachments

Examples
========

.. code-block:: Bash

	# Parse the PST file
	pffexport some_dude.pst

