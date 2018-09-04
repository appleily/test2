#!/bin/bash
#脚本是用来删除A和B两数服务器上的日志

#查找A类机器的日志
afile=`find /opt/cloud/log -mtime +7`

#查找B类机器的日志
bfile=`find /opt/cloud/instances -mtime 15 -name "*.log"`

#登录到目录服务器，删除文件
for ip in aip
do
ssh $ip ; rm -rf $afile
done

for ip in bip
do
ssh $ip ; rm -rf $bfile
done 


