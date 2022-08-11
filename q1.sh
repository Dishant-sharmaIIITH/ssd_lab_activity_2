#!/bin/bash

echo -e "Enter file path : "
read filepath

numberol=`wc -l < $filepath`
div=2


if [ $(( $numberol%2 )) -eq 0 ]
then
	midline=$(( $numberol/$div ))
else
	midline=$(( $numberol/$div ))
	midline=$(( $midline+1 ))


fi

 awk '{if(NR=='$midline') print $0}' $filepath
