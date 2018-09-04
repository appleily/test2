#!/bin/bash
ps aux |awk '/[0-9]/ {print $2}' |while read pid
do
re=`find /proc -maxdepth 1 -type d -name $pid`
if [ -d $re ]
then
echo "normal"
else
echo "not normal"
fi
done
