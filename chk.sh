#!/bin/bash
#脚本是用来关闭不常用的服务的

read -p "please input youre server:" server
chkconfig --list | grep $server
if [ $? == 0 ]
then
echo "$server is not exist"
fi

chkconfig $server off 
