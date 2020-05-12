#!/bin/bash -x
sum=0;
for (( i=1; i<=5; i++ ));
	do
		x=$((RANDOM%100));
		if [ $x -lt 10 ]
			then
				x=$(($x+10))
			else
				x=$x
		fi
		sum=$(($sum+$x));
	done
#avg=$sum/5
awk -v sum="$sum" -v n="5" 'BEGIN { printf "\n\"avg\": %s", sum/n }'
echo sum=$sum;
#echo avg=$avg;
