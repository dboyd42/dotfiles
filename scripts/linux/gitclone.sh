#!/bin/bash
File="repos.txt"
Lines=$(cat $File)
for Line in $Lines
do
	git clone git@github.com:dboyd42/$Line
done
