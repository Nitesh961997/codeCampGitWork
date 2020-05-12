#!/bin/bash 
read -p "enter the starting number to be checked= " n;
read -p "enter the ending number to be checked= " en;
for (( i=n; i<en; i++ ))
	do
		flag=0
		for (( c=2; c<=$(($i/2)); c++ ))
			do
				d=$(($i%$c)) 
			if [ $d -eq 0 ]
				then
					flag=1
			fi
			done

			if [ $i -eq 1 ]
				then
					echo $i is not prime or composite
				elif [ $flag -eq 0 ]
					then
						echo $i is prime
				else 
					echo $i is composite
			fi
	done
