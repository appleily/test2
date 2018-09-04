#!/bin/bash
n=$(basename $0)
if_install ()
{
n=`rpm -qa | grep -cw "$1"`
echo $n
}
if_install 
