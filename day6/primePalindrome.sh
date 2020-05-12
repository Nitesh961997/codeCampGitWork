#!/bin/bash -x
function prime(){
local $n=$1
flag=0
for (( c=2; c<=$n/2; c++ ))
        do
        d=$(($n%$c))
                if [ $d -eq 0 ]
                        then
                                flag=1
                fi
        done

local $n=$1
if [ n -eq 1 ]
	then
		echo $n is not prime or composite
	elif [ $flag -eq 0 ]
		then
		echo $n is prime
	else
		echo $n is composite
fi
}


function palindrome(){
local $n=$1
r=0
while [ $n != 0  ]
        do
                r=$r*10
                r=$(($r+$n%10))
                n=$(($n/10))
        done
echo $r
}

read -p "enter the number to be checked= " n;
a=$n
Answer="$(prime $n)"
echo $Answer
reverse="$(palindrome $n)"
if [ $reverse -eq $a ]
        then
                echo no is plaindrome
        else
                echo no is not palindrome
fi
