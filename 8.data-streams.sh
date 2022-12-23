#!/bin/bash
echo "List Everythingggggggggggggggggggggggggggggg"
find /etc -type f

echo "List Standard Outputssssssssssssssssssssssss"
find /etc -type f 2> /dev/null

echo "List Standard Errorrrrrrrrrrrrrrrrrrrrrrrrrr"
find /etc -type f > /dev/null

echo "Redirecting everything to one file"
find /etc -type f &> result.txt

echo "Redirecting result to separate files"
find /etc -type f 1> success.txt
find /etc -type f 2> error.txt


echo "Please enter your name:"
read myname

echo "Your name is: $myname"
