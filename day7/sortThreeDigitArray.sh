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
for ((i = 0; i<10; i++)) 
do
      
    for((j = 0; j<10-i-1; j++)) 
    do
      
        if [ ${value[j]} -gt ${value[$((j+1))]} ] 
        then
            # swap 
            temp=${value[$j]} 
            value[$j]=${value[$((j+1))]}   
            value[$((j+1))]=$temp 
        fi
    done
done
echo "Array in sorted order :"
echo ${value[*]}
echo maxSec=${value[8]}
echo minSec=${value[1]}
