#!/bin/bash

myvar=1

while [ $myvar -le 10 ]
do
	echo $myvar
	myvar=$(( $myvar +1 ))
	sleep 0.3
done


while [ -f /tmp/testfile ]
do
	echo "As of $(date), the test file exists."
done

echo "As of $(date), the test file has gone missing."
