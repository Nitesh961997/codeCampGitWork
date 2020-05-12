#!/bin/bash -x
read -p "enter the number to be checked= " n;
flag=0
for (( c=2; c<=$n/2; c++ ))
	do
	d=$(($n%$c)) 
		if [ $d -eq 0 ]
			then
				flag=1
		fi
	done

		if [ $n -eq 1 ]
			then
				echo $n is not prime or composite
		elif [ $flag -eq 0 ]
			then
				echo $n is prime
		else 
				echo $n is composite
		fi
