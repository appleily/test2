#!/bin/bash
#脚本用来监控各节点CDN是否正常
for ip in `cat /tmp/ip.txt`
do
ssh $ip
statu=`curl -i "www.aming.com/index.php" `
if [ "$statu" == 200 ]
then
 echo "$ip is normal"
else
 echo "$ip is nonoraml"
fi
done

