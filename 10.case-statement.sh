#!/bin/bash

finished=0
while [ $finished -ne 1 ]
do
	echo "What is your favourite Linux distribution?"

	echo "1 - Arch"
	echo "2 - CentOS"
	echo "3 - Debain"
	echo "4 - Ubuntu"
	echo "5 - Something else..."
	echo "6 - Exit the script."

	read distro

	case $distro in
		1) echo "Arch is a rolling release.";;
		2) echo "CentOS is popular on servers.";;
		3) echo "Debain is a community distribution.";;
		4) echo "Ubuntu is popular on both servers and computers.";;
		5) echo "There are many distributions out there";;
		6) finished=1;; 
		*) echo "You didn't enter an appropriate choice.";;

	esac
done

echo "Thank you for using this script."