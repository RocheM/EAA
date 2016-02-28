#!/bin/bash

time=`date`
nonRoot=`ps -U root -u root | wc -l`

if [ ! -d $HOME/EAA/week2/logs ]; then
mkdir $HOME/EAA/week2/logs
fi

if [ "$nonRoot" -gt "$1" ]
then
	echo "$nonRoot exceeds $1 $time">>$HOME/EAA/week2/logs/test.log
	echo "$nonRoot exceeds $1 $time"
else
	echo "$1 root processes at $time">>$HOME/EAA/week2/logs/test.log
	echo "$1 root processes at $time"
fi
