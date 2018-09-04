#!/bin/bash
#set -o pipefail
set -e
ls ./a.txt | echo "hi" > /dev/null
echo $?
