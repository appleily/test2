#!/bin/bash
#脚本用于Kill掉服务器上的进程

#查看文件有多少行
l=`cat /root/ip-pwd.ini | wc -l`

#分别登录到每台服务器
for n in `seq 1 $l`
do
ip=`sed -n "$n"p /root/ip_pwd.ini | awk -F "," '{print $1}'`
user=`send -n "$n"p /root/ip_pwd.ini |awk -F "," '{print $2}'`
password=`send -n "$n"p /root/ip_pwd.ini |awk -F "," '{print $3}'`
/home/expect.exp $ip $password    //建立信任关系
ssh $ip ; killall -9 tomcat      //登录到远端服务器，执行kill命令
done
