#!/bin/bash
file=$(find /home -name "3*")
zip -q -r /tmp/dd.zip $file
unzip -d /root /tmp/dd.zip
echo "$file" >> /home/file.log
