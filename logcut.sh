#!/bin/bash

#定义文件
file=/var/log/mail
doc=/var/log/

#定义日期是昨天
d_yeday=`date --date="-1day" +%d`

#定义昨天的文件格式
 d_file=`date --date="-1day" +%y%m%d`

#定义今天的日期
d_now=`date +%d`

#定义今天文件的格式
df=`date +%y%m%d`

#定义一个函数截取出昨天的内容，并压缩成tar.gz模式
cutyeday()
{
 cat $file | grep ^$d_yeday >> /var/log/$d_file.log
 tar -czvf $doc$d_file  $doc$d_file.log
}

#定义一个函数，截取出今天的内容
cuttoday()
 {
 cat $file | grep ^$d_now >> /var/log/$df

}


#判断如果存在目标文件话，则执行截取命令
if [ -f $file ];then
cutyeday
cuttoday
else
exit
fi





 


