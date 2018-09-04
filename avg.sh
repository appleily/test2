#!/bin/bash
#此脚本是对1.txt文件里面的内容进行求平均数

for n in `cat 1.txt`
do
l=`cat 1.txt | wc -l`
sum=`let $sum+$n`
done

avg=`let $sum/$l`
echo $avg
