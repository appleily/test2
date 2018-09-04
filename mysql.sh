#!/bin/bash
#此脚本是用于检测mysql服务是否正常

##############################
#将mysql的服务检查结果导出到某文件中
mysqlfile=`mysql -u root -p123456 -e 'show processlist' > /home/mysql.txt`

#过滤出状态栏中的字段
statue=`cat /home/mysql.txt | awk '{print $7}' | sed -n '2p'`

#判断mysql服务的状态
if [ $statue == "starting" ]
then
 echo "mysql server is ok"
else
 systemctl restart mysqld.service
fi


 
