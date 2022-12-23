#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
	# The host is based on Arch, run the pacman update command
	sudo pacman -Syu

elif grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	# The host is based on Pop or Ubuntu
	# Run the apt update command
	sudo apt update
fi
