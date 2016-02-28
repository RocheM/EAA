#!/bin/bash


dir=`pwd`
cd $1
files=`file -b $1/* | cut -d ',' -f1 | sort | uniq -c -w10`


echo "$files \n">>$dir/test.txt
