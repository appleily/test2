#!/bin/bash
#找出/home目录下面小于5KB的文件
f=`find /var -type f -size 5k `

#定义一个时间变量
d=`date +%Y-%m-%H`

for n in $f
do
zip $d.zip $n
done
