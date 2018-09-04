#!/bin/bash
l=`cat a.txt | wc -l`
for n in `seq 1 $l`
do
a1=`sed -n "$n"p a.txt | awk '{print $1}'`
a2=`sed -n "$n"p a.txt | awk '{print $2}'`
echo "$a1 : $a2"
done
