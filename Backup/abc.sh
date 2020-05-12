#!/bin/bash -x
read -p "a" a
read -p "b" b
read -p "c" c
d="$(($a+$b*$c))"
e="$(($c+$a/$b))"
f="$(($a%$b+$c))"
g="$(($a*$b+$c))"
echo "$a+$b*$c" | bc
echo  $d
echo  $e
echo  $f
echo  $g
count=0
oper[((count++))]="$d"
oper[((count++))]="$e"
oper[((count++))]="$f"
oper[((count++))]="$g"
echo ${oper[1]}
max=0
min=100000
for (( i=0; i<4; i++ ))
do
        if [ ${oper[$i]} -gt $max ]
                then
                        max=${oper[$i]};
                elif [ ${oper[$i]} -lt $min ]
                        then
                                min=${oper[$i]};
                else
                        min=$min
                        max=$max
	fi
done
echo $max
echo $min
