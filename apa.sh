#!/bin/bash
num=`ps -ef | grep httpd | wc -l`
if [ $num -ge 500 ]; then
 /etc/init.d/httpd restart
fi

http()
{
service httpd status | grep running
if [ $? == 0 ];then
 exit
else
 /etc/init.d/httpd restart
fi
}

num=1
while num<5
do
http
num=$[num+1]
done
