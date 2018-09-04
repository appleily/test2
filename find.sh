#!/bin/bash
#查找/data/log目录下的文件，并删除
file=/var/log

#查找三天前的文件
f=`find $file -mtime +3 -name "*.log"`

#压缩文件
for n in $f
do
tar=`zip log.zip $n`
done
