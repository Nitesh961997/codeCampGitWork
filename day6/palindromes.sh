#!/bin/bash -x
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
read -p "enter the number" n;
a=$n
reverse="$(palindrome $n)"
if [ $reverse -eq $a ]
	then
		echo no is plaindrome
	else
		echo no is not palindrome
fi
