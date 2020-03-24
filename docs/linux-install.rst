linux-install
#######
:Author: David Boyd
:Date: 2020-03-24

.. code-block :: Bash

	### Update and Upgrade
	## If using Kali - Add repos
	# kali-rolling: Default and frequently updated
	echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list
	# Snapshot: stable and safest
	echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib" | sudo tee /etc/apt/sources.list
	## Update and Upgrade
	apt update && apt upgrade

	### Terminator
	apt install terminator -y

	### Java
	# Check version
	java -version
	# If not installed
	apt install default-jre -y
	# Check compiler version
	javac -version
	# If not installed
	apt install default-jdk

