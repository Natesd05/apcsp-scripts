#!/bin/bash
MACHINES="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

if [ $# -gt 0 ] ; then
	arg=$*


for arg in $* ; do
	ping -c 1 $arg > /dev/null
	if [ $? -eq 0 ] ;
	then
		echo "$arg:alive"
	else
		echo "$arg:not alive"
	fi
done

else

for machine in $MACHINES ; do
	ping -c 1 $machine > /dev/null
	if [ $? -eq 0 ] ;
	then
		echo "$machine:alive"
	else
		echo "$machine:not alive"
	fi
done

fi

