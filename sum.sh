#!/bin/bash
cat /etc/passwd | awk -F: '{print $3}' | while read line
do
sum=$[sum+line]
echo $sum
done
echo $sum
