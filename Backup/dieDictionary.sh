#!/bin/bash -x
one=1
two=1
three=1
four=1
five=1
six=1
max=0
min=6
z=0
q=100
#declare -A dieRoll
for (( i=1; $z!=100; i++ ))
	do
		result=$((RANDOM%6+1))
			case $result in
				1)
					dieRoll[1]=$((one++))
				;;
				2)
					dieRoll[2]=$((two++))
				;;	
				3)
					dieRoll[3]=$((three++))
				;;
				4)
					dieRoll[4]=$((four++))
				;;
				5)
					dieRoll[5]=$((five++))
				;;
				6)
					dieRoll[6]=$((six++))
				;;
				*)
					echo invalid
				;;
			esac
	#for (( j=1; j<=6 ; j++ ))
	j=1
	while [[ $j -lt 7 && $z -ne 100 ]]
		do
		x=$((${dieRoll[$j]}))
			if [[ $x -gt 10 ]]
				then 
					z=100
				else
					z=0
			fi
			((j++))
		done
	done
echo ${!dieRoll[@]}
echo ${dieRoll[@]}
