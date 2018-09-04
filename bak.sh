#!/bin/bash
###需求：将当前目录下的以.bak结尾的文件后缀去掉
file=`find /home -name "*.bak" | awk -F "/" '{print $3}'`
for n in $file
do
a=`echo $n | awk -F "." '{print $1"."$2}'`
b=`echo $n | awk -F "." '{print $NF}'`
rename $n $a
done
