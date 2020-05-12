#!/bin/bash -x
counter=0
max=0
maxSec=0
min=1000
minSec=1000
for (( i=1; i<=10; i++ ))
	do
		num=$((RANDOM%1000))
		if [ $num -lt 100 ]
			then
				num=$(($num+100))
				value[((counter++))]="$num"
		else
			num=$num
			value[((counter++))]="$num"
	fi
done
for (( i=0; i<10; i++ ))
	do
		x=${value[$i]}
        	if [ $x -gt $max ]
                	then
                        	max=$x;
        	elif [[ $x -lt $max && $x -gt $maxSec ]]
			then
				maxSec=$x
			else
				max=$max
				maxSec=$maxSec
		fi
		echo $max
		echo $maxSec				
	done
for (( i=0; i<10; i++ ))
	do
		x=${value[$i]}
        	if [ $x -lt $min ]
                	then
                        	min=$x;
        	elif [[ $x -gt $min && $x -lt $minSec ]]
			then
				minSec=$x
			else
				min=$min
				minSec=$minSec
		fi
		echo $min
		echo $minSec				
	done
echo ${value[@]}
echo $max
echo $maxSec
echo $min
echo $minSec				
