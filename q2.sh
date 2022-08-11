#!/bin/bash

cat /etc/shells > etcshelloutput.txt
file=/home/dishant/Desktop/Shell_files/ssdlab2/etcshelloutput.txt

awk '{print $0}' $file





awk ' BEGIN{ FS="/" };{if($2=="usr") print $4}' $file
