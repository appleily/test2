#!/bin/bash
#检测A和B两台服务器上的文件是否一致

#检查A服务器上/home目录下所有文件
file=`find /home -type f `

#每个文件生成一个md5值，并放在以amd5.txt文件中
for n in $file
do
 md5sum $n >> /home/md5.txt
done

#将A服务器生成的md5文件上传到B服务器
scp /home/amd5.txt root@127.0.0.1:/root

################################
#查找B服务器上面的文件
fileb=`find /home -type f `
for n in fileb
do
bmd5=`md5sum $n | awk '{print %2}'`
amd5=`cat md5.txt | awk '{print $2}'`
bmd=`md5sum $n | awk '{print %1}'`
amd=`cat md5.txt | awk '{print $1}'`
if [ $bmd5 == $amd5 ] -a [ $bmd == $amd ]
then
 echo "$n is succ"
else
 echo "$n is fail"
fi
