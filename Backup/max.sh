#!/bin/bash -x
max=0
min=1000
for (( i=1; i<=5; i++ ))
	do
		x=$((RANDOM%1000));
	if [ $x -lt 100 ]
		then
			x=$(($x+100))
		else
			x=$x
	fi
	if [ $x -gt $max ]
		then 
			max=$x;
		else
			max=$max
	fi
done
echo $max	


