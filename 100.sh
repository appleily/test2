#!/bin/bash
s=1
while [ $s -le 100 ]
do
echo "$s: a" >> /home/100.txt
s=$[s+1]
done
