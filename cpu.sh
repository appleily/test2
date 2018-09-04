#!/bin/bash
#脚本是用来判断CPU是那个厂家的
cpu=`cat /proc/cpuinfo | grep "vendor" | awk -F ":" '{print $2}'`
if [ $cpu == "amd" ]
then
 echo "amd"
else
 echo "no"
fi
