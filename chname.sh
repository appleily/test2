#!/bin/bash
file=`find -type f /home/dir -name *txt`
for n in $file
do
echo $n |sed s/txt/doc/g
done
