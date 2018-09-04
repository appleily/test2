#!/bin/bash
for i in `awk '{print $1}' a.txt`
do
j=`awk I="$i"'{if($I==$1)print $2}' a.txt`
expect expect.exp $i $j
done

