#!/bin/bash
#定义一个时间变量
da=`date +%Y-%m-%m" "%H:%m`
#定义一个流量输入变量
input=`ifconfig eno16777736 | grep "bytes" |grep "RX" | awk '{print $6,$7}'`
#定义一个流量流出的变量
output=`ifconfig eno16777736 | grep "bytes" |grep "TX" | awk '{print $6,$7}'`

echo "$da" >> /home/ifconfig.log
echo "eth0 input: $input" >>/home/ifconfig.log
echo "etho output: $output">> /home/ifconfig.log
echo "##########################################" >> /home/ifconfig.log
