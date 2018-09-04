#!/bin/bash
#功能：监控web服务是否正常，间隔1分钟，持续监控

#监控状态
statu=`service httpd status | grep "active" | awk '{print $3}'`
s=${statu//(/}
s1=${s//)/}

if [ $s1 == active ];then
 echo "acitve"
elif [ $s1 == 'dead' ];then
 echo "dead"
fi

