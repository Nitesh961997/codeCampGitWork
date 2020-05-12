#!/bin/bash -x
random=$((RANDOM%50*2))
noOfGuess=0
guess=$((RANDOM%50*2))
lowLim=1
upLim=100
while [[ $random -ne $guess ]]
do

	if [[ $guess -lt $random ]]
		then
			lowLim=$guess
			guess=$((($upLim+$lowLim)/2))
			((noOfGuess++))
		elif [[ $guess -gt $random ]]
			then 
			upLim=$guess
			guess=$((($upLim+$lowLim)/2))
			((noOfGuess++))
		elif [[ $guess -eq $random ]]
			then 
			echo your guess is correct
		else
			echo invalid
	fi

done
echo correct guess - $guess
