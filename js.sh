#!/bin/bash
#脚本是用来计算a.txt这个文件中出现的数字个数，并且要计算整个文档中一共出现了几个数
#计算每一行出现的数字个数
row=`cat a.txt | wc -l`
for r in `seq 1 $row`
do
num=`sed -n $rp a.txt | grep -o "[0-9]"`
echo "$num" >> aa.txt
done
