#!/bin/bash
#脚本是用来在每个月的1号压缩/etc这个目录下面所有的文件，压缩文件存放在/root/bak目录

#定义一个压缩的文件名
time=`date +%y%m%d`

#压缩文件
if [ ! -d /root/bak ]
then
 mkdir /root/bak
fi

cd /root/bak
tar czvf $time_etc.tar.gz /etc

