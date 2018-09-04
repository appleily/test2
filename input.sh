#!/bin/bash
#脚本用来打出城市名字
while true
do
read -p "请输入城市名称，不少于5个" area
echo $area >> /home/area.txt
l=`cat area.txt | wc -l`
if [ $l -le 5 ]
then
echo ”地名少于5个，请继续"
elif [ $l -ge 5 ]
then
break
else
echo "please input agin"
fi
done
