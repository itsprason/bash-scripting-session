#!/bin/bash

for i in 1 2 3 4 5 6 7
do
	echo $i
	sleep 0.4
done


for i in {1..7} 
do
	echo $i
	sleep 0.4
done


for file in /tmp/tempfolder/*.zip
do
	unzip $file
done
