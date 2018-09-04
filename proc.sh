#!/bin/bash
#这个脚本是用来检测操作系统有没有被修改过
ps=`ps -aux | awk '{print $2}' | grep -v "pid"`
for n in $ps
do
cd /proc
proc=`find /proc -maxdepth 1 -type d -name $n`
for pp in $proc
do
if [ -d $pp ]
then
echo "系统正常"
else
echo "系统不正常"
fi
done
done
