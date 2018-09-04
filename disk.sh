#!/bin/bash
time=`date +%Y%m%d`
df -h >> /home/disk-$time

prc=`df -h | awk '{print $5}' | grep [0-9] | sed 's/%//g'`

for n in $prc
do
if [ $n -ge 85 ]; then
echo "disk is output"
fi
done
