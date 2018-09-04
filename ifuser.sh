#!/bin/bash
who | grep $1 > /dev/null
if [ $? == 0 ]
then
echo "$1 alread login"
info=`cat /etc/passwd | grep $1`
echo "$1的用户信息如下："
echo $info
