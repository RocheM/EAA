#!/bin/bash

if [ "$(whoami)" != 'eaauser' ]; 
then
	echo "Must Be EAAUser"
	exit 1;
else

	printf "Hello %s!\n" "$1"
	echo -n "Enter some text > "
	read text
	echo "You entereid: $text"

fi
