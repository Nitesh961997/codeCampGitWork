#!/bin/bash/ -x
isPresent=1;
randomcheck=$((RANDOM%2));
echo=$randomcheck;
if [ $isPresent -eq $randomcheck ];
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi
