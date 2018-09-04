#!/bin/bash -xv
sshd=`ps -ef | grep sshd | grep -v "grep"`
if [ $sshd -eq 1 ];then
 systemctl restart sshd
fi

