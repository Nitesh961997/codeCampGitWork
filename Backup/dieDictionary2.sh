#!/bin/bash -x
one=0
two=0
three=0
four=0
five=0
six=0
max=0
min=6
diclare -A dieRoll
for (( i=1; i<10; i++ ))
	do
		result=$((RANDOM%6+1))
			dieRoll[i]=$result
			case $result in
				1)
					((one++))
				;;
				2)
					((two++))
				;;	
				3)
					((three++))
				;;
				4)
					((four++))
				;;
				5)
					((five++))
				;;
				6)
					((six++))
				;;
				*)
					echo invalid
				;;
			esac


	done

echo ${dieRoll[@]}
