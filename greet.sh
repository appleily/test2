#!/bin/bash
time=`date | awk '{print $5}' | awk -F ":" '{print $1}'|sed s/0//g`
if [ $time -le 12 ]
then
echo "good morning"
elif [ $time -ge 12 ] && [ $time -le 18 ]
then
echo "good aftering"
else
echo "good evening"
fi

