#!/bin/bash -x
for (( i= 1; i<=100; i++ ))
do
read -p "enter 4 digit year" year;
	if [ $year -lt 1000 ]
	then
		echo renter 4digit year
	else 
		i=100
	fi
done
x=$(($year%4))
if [ $x -gt 0 ]
	then 
		echo year is not leap year
	else 
		echo year is leap year
	fi

