#!/bin/bash -x
counter=0
for (( i=10; i<=100; i++ ))
	do
		n=$i
		r=0
		while [[ $n -ne 0 ]]
        		do
        	        	r=$r*10
                		r=$(($r+$n%10))
                		n=$(($n/10))
			done
		echo $r
				if [ $r -eq $i ]
					then
						double[((counter++))]="$r"
				fi
	done
echo ${double[@]}

