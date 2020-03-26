linux-install
#######
:Author: David Boyd
:Date: 2020-03-24

Apt Package Manager
===================

.. code-block :: Bash

	# Get information about a package
	apt show <pkg>

Programs to Install
===================

.. code-block :: Bash

	### Update and Upgrade
	## If using Kali - Add repos
	# kali-rolling: Default and frequently updated
	echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list
	# Snapshot: stable and safest
	echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib" | sudo tee /etc/apt/sources.list

	###
	### Basics
	###

	## Update and Upgrade
	apt update && apt upgrade

	### Terminator
	apt install terminator -y

	### Vim
	apt remove --purge vim
	apt install vim -y
	apt install vim-gtk3

	### Git
	git --version
	apt install git

	###
	### Programming Languages & Compilers
	###

	### GCC/g++ for C/C++
	g++ --version
	apt install build-essential -y

	### Java
	java -version
	apt install default-jre -y
	javac -version              # JavaCompiler
	apt install default-jdk

	### Make
	make --version
	apt install make

	### Python Package Managers
	## Python3
	pip3 --version
	apt install python3-pip -y
	## Python2
	pip --version
	apt install python-pip -y
	# Google's cpplint
	pip3 install cpplint

	# AVR Tools (Arduino, etc)
	apt install gcc-avr iverilog gtkwave binutils-avr avr-libc avrdude

	###
	### Others
	###
	apt install ascii

