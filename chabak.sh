#!/bin/bash
#定义一个函数，用于类型判断
#引入function函数库

cha()
{
if [ $1 -eq 20 ]
then
 echo "succ" /usr/bin/true
else
 echo "fail" /usr/bin/false
fi
}
cha $1
