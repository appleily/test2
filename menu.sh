#!/bin/bash
read -p "please input youre choice:" active
case $active in
c)
echo "copy"
;;
d)
echo "rm -rf"
;;
m)
echo "move"
;;
*)
echo "i don\'t know"
;;
esac

