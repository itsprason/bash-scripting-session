#!/bin/bash

mynum=322

if [ $mynum -ne 322 ]
then
	echo "Number is 322"
else
	echo "Number didn't match"
fi


if [ -f /etc/passwd ]
then
	echo "The file exists."
else
	echo "The file does not exist."
fi


# htop project
command=/usr/bin/htop

if [ -f $command ]
then
	echo "$command is available, let's run it..."
else
	echo "$command is NOT available. istalling it..."
	yay -Sy htop
fi

$command



if command -v $command 
then
	echo "$command is available, let's run it..."
else
	echo "$command is NOT available. istalling it..."
	yay -Sy htop
fi

$command
