#!/bin/bash
#打印一个表格

while read line
do
ip=`echo $line | awk '{print $1}'`
name=`echo $line | awk '{print $2}'`
awk '{print "name:\n" $name "\n" "ip:\n"$ip}'
done < /etc/hosts

