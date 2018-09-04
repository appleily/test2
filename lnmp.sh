#!/bin/bash
#脚本是用来新添加用户的

#用户数据写进数据库
def mysql()
{
mysql -uroot -p123456 -c "use mysql;insert into user,passs values ($1,$2)"
}

def ftp()
{
echo "$1 $2" >> /etc/vsftpd.conf
}

def httpd()
{
echo "$1" >> /etc/httpd.conf
}

#执行函数
mysql
ftp
httpd
