#!/bin/bash/ -x
isPresent=1;
randomcheck=$((RANDOM%2));
echo=$randomcheck;
if [ $isPresent -eq $randomcheck ];
then
	empRatePerHr=80;
	empWorkingHr=8;
	salary=$(($empRatePerHr*$empWorkingHr));
else
	echo "Employee is Absent";
fi
