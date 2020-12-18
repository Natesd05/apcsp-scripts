#!/bin/bash
MACHINES="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for machine in $MACHINES ; do
	echo $machine
	ping $machine > /dev/null
	if [ $? -eq 0 ] ;
	then
		echo ":alive"
	else
		echo ":not alive"
	fi
done
exit0
