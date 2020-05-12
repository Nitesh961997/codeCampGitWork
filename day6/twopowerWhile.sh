#!/bin/bash -x
result=1
while [ $result != 256 ]
do 
result=$(($result*2))
((i++))
done 
echo $result
