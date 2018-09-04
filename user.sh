#!/bin/bash
#定义一个随机的生成的10位数密码
pa=`tr -dc "0-9A-Za-z" < /dev/urandom | head -c 10`

#创建用户
for n in {0..2}
do
#useradd user$n
echo `tr -dc "0-9A-Za-z" < /dev/urandom | head -c 10`  | passwd --stdin user$n
echo "user$n $pa" >> /home/pass.txt
done

