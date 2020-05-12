#!/bin/bash -x

a=$((RANDOM%100));
if [ 10 -gt $a ];
then
	a=$(($a+10));
else
	a=$a;
fi
echo $a;
b=$((RANDOM%100));
if [ 10 -gt $b ];
then
	b=$(($b+10));
else
	b=$b;
fi
echo $b;
c=$((RANDOM%100));
if [ 10 -gt $c ];
then
	c=$(($c+10));
else
	c=$c;
fi
echo c;
d=$((RANDOM%100));
if [ 10 -gt $d ];
then
	d=$(($d+10));
else
	d=$d;
fi
echo $d;
e=$((RANDOM%100));
if [ 10 -gt $e ];
then
	e=$(($e+10));
else
	e=$e;
fi
echo $e;
sum=$(($a+$b+$c+$d+$e));
echo sum=$sum;
avg=$((($a+$b+$c+$d+$e)/5));
echo avg=$avg;

