#!/bin/bash
for  file in `ls *.1`;
do
	fileName=`echo $file | awk -F. '{$4="19042020"}{print $1"-"$4"."$2}'`;
	mv $file $fileName;
done
