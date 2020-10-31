apt-get
#######
:Author: David Boyd
:Date: 2020-09-30

Fresh Install
=============

.. code-block:: Bash

	sudo apt update -y && sudo apt upgrade -y

Programs
========

The following are additional programs to be installed if needed:

+---------------+-----------------------------+-------------------------------+
| pkg name      | description                 | commands                      |
+===============+=============================+===============================+
| ascii         | ascii chart & conversion    |                               |
+---------------+-----------------------------+-------------------------------+
| avrdude       | Arduino driver              |                               |
+---------------+-----------------------------+-------------------------------+
| g++           | C++ compiler                |                               |
+---------------+-----------------------------+-------------------------------+
| go            | programming language        | go get github.com/OJ/gobuster |
+---------------+-----------------------------+-------------------------------+
| imagemagick   | image viewer                | display inFile.jpg            |
+---------------+-----------------------------+-------------------------------+
| kali-win-kex  | WSL-Kali's GUI              |                               |
+---------------+-----------------------------+-------------------------------+
| make          | utility for grps of prmgs   |                               |
+---------------+-----------------------------+-------------------------------+
| mingw-w64     | Development env & tools to  |                               |
|               | compile Win code from Linux |                               |
+---------------+-----------------------------+-------------------------------+
| python3-pip   | pkg mgr for py/3            | pip install pkg               |
+---------------+-----------------------------+-------------------------------+
| poppler-utils | PDF utilities (pdftotext)   | less file.pdf                 |
+---------------+-----------------------------+-------------------------------+
| tor           | onion router                |                               |
+---------------+-----------------------------+-------------------------------+
| tree          | list dir contents           |                               |
+---------------+-----------------------------+-------------------------------+
| vim           | terminal/GUI editor         |                               |
+---------------+-----------------------------+-------------------------------+

Additional Package Managers
===========================

Python
------

.. code-block:: Python

	# For Python3 libraries
	pip3 search/install <pkg>

Go
--

.. code-block:: Go

	// Install Github repositories
	go get github.com/OJ/gobuster

Notes
=====

Install Go
----------

.. code-block:: Bash

	# Download 'Go'
	wget -c https://golang.org/dl/go1.15.3.linux-amd64.tar.gz

	# C(hange) to directory then extract pkg
	sudo tar -C /usr/local -xzf go1.15...tar.gz

	# Add /usr/local/go/bin to the 'PATH' env variable
	export PATH=$PATH:/usr/local/go/bin

	# Verify 'Go' version
	go version

