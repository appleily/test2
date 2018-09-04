#!/bin/bash
#定义一个函数，用于类型判断
#引入function函数库
. /etc/init.d/functions

#定义一个函数
cha()
{
if [ $1 -eq 20 ]
then
 action "succ" /usr/bin/true
else
 action "fail" /usr/bin/false
fi
}
cha $1
