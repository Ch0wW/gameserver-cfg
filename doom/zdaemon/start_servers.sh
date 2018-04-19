#!/bin/bash

FILENAME="start_servers.sh"

#====================#

list=`ls *.sh`
for script in $list
do
	if [ $script == "$FILENAME" ] ;then 
		continue
	fi
	echo "Starting $script..."
	sh $script >/dev/null 2>&1 &
done
