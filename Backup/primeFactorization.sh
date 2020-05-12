#!/bin/bash -x
counter=0
read -p "enter number for which factor " x;
for (( i=2; $x>1; i++ ))
	do
		z=$(($x%$i))
		while [ $z -eq 0 ]
			do
			factors[((counter++))]=$i
			
			x=$(($x/$i))
			z=$(($x%$i))
			done
	done
echo ${factors[@]}
