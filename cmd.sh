#!/bin/bash
echo "脚本可以实现如下功能。输入1表示date；输入2表示ls命令；输入3表示who命令；输入4表示pwd命令"
read -p "请输入你想要进行的功能;" cmd
case $cmd in
1)
date
;;
2)
ls
;;
3)
who
;;
4)
pwd
;;
*)
echo "i don\'t no"
;;
esac

