#!/bin/bash -x
for  file in `ls *.1`;
do
	#todayDate=`date +"%d%m%Y"`;
	date="21042020"
	fileName=`echo $file | awk -F. '{print $1"-"$date"."$2}'`;
	mv $file $fileName;
done
 
