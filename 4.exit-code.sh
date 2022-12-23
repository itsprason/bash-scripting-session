#!/bin/bash
package=sahasa

yay -S $package

if [ $? -eq 0 ]
then
	echo "$package installed..."
else
	echo "$package failed to install..."
fi
