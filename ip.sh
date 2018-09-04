#!/bin/bash
#定义前一分钟
dm=`date --date="-1min" +%M`

#定义前30分钟
d30=`date --date="-30min +%M"`

#定义时间间隔
dd=`seq $d30 $dm `

#定义当前时间的小时
dh=`date +%H`


#定义日志文件
file=/var/log/mail


#过滤出一分钟访问量最高的ip
cat $file | grep "$dh\:$dm" | awk '{print $1}' | uniq -c | sort -r | head -n 10 | awk '{print $2} > /home/ip.txt

#封掉这个访问量高的ip
black()
{
for n in `cat /home/ip.txt`
do
iptables -A input -s $n -j DROP
done
}

#过滤30出分钟之内没有什么访问量的ip

unblack()
{
cat $file | grep "$dh\:$dd" | awk '{print $1}' | uniq -c | sort -n | head -n 10 | awk '{print $2} > /home/
ip1.txt

for n in `cat /home/ip1.txt `
do
iptables -L --line | grep $n | awk '{print $1} | xargs iptables -D 
done
}

#根据时间判断执行








