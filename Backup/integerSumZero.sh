#!/bin/bash 
read -p "enter the integers count(min 3) " numberOfInt
count=0
for (( i=1; i<=$numberOfInt; i++ ))
	do
		read -p "enter value for integer " int[$((i-1))]
	done
z=$(($numberOfInt-2))
for (( j=0; j<$z; j++))
	do
		y=$(($numberOfInt-1))
		for (( k=$(($j+1)); k<$y; k++ ))
			do
				for(( l=$k+1; l<$numberOfInt; l++ ))
					do
						if [ $(( int[$j] + int[$k] + int[$l] )) -eq 0 ]
							then
								((count++))
								echo ${int[$j]} ${int[$k]} ${int[$l]} 
						fi
					done
			done
	done
if [ $count -eq 0 ]
then 
	echo "no Such Triplet"
fi
