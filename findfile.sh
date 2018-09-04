#!/bin/bash
doc=/var/log
time=`date +%Y%m%d%H%m`
find $doc -mmin 1 | awk -F"/" '{print $NF}' | while read name
do
echo "$time: $name" >> /home/file.txt
done
