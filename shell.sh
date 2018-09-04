#!/bin/bash
sh -n $1 >> /home/sh.txt
if [ $? != 0 ]
then
cat /home/sh.txt
fi
read -p "提示输入q或者Q可以退出，输入其他内容则是编辑此脚本:" qu
if [ $qu == "q" -o $qu == "Q" ]
then
exit
else
vi $1
fi

