#!/bin/bash
file=`find /tmp -name "abc*"` | heand -n 100`
for n in $file
do
echo "sds" >> /home/$n
done

