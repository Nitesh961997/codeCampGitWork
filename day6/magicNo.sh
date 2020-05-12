#!/bin/bash -x
random=$((RANDOM%100+1))
noOfGuess=0
guess=0
for (( i=1; $random!=$guess; i++ ))
do
	read -p  "enter your guess between 1 to 100= " guess
	if [[ $guess -lt $random ]]
		then
			echo guess is too low
			((noOfGuess++))
		elif [[ $guess -gt $random ]]
			then 
				echo guess is too high
			((noOfGuess++))
		elif [[ $guess -eq $random ]]
			then 
			echo your guess is correct
		else
			echo invalid
	fi
done
