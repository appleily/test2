#!/bin/bash
#脚本是用来判断系统是否开启了http服务

#检查服务的状态
http=`netstat -tunlp | grep 80 | awk '$1=="tcp" {print $7}' | awk -F "/" '{print $2}' | sed -n '2p'`

#判断是否开启了http
if [ $http=="" ]
then
 echo "系统没有开启http服务"
elif [ $http=="http" ]
then
 echo "系统开启了http服务"
elif [ $http=="nginx" ]
then
 echo "系统开启了nginx服务"
else
 echo "系统开启了其它服务，$http"
fi

