#!/bin/bash/ -x
isParttime=0;
isFulltime=1;
randomcheck=$((RANDOM%2));
empRatePerHr=80;
echo=$randomcheck;
if [ $isPartime -eq $randomcheck ];
then
	empWorkingHr=8;		
	salary=$(($empRatePerHr*$empWorkingHr));
elseif [ $isfulltime -eq $randomcheck ];
	empWorkingHr=4;
	echo "Employee is Absent";
	salary=$(($empRatePerHr*$empWorkingHr));
else
	echo "employee is abcent";
fi
