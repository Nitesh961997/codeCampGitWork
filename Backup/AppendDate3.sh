#!/bin/bash -x 
for  file in `find -mtime -7 | ls *.txt`;
do
	
	fileName=`echo $file | awk -v date="$(date +'%d%m%Y')" -F. '{$3=date}{print $1"."$3"."$2}'`;
	mv $file $fileName;
done
 
