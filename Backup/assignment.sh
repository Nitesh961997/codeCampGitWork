#!/bin/bash -x
declare -A sysname
for (( i=1; i<=5; i++ ))
do 
	read -p "enter user name" user;
	sysname[$user]=`date`
done 
echo ${!sysname[@]}
echo ${sysname[@]}
