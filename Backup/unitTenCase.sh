#!/bin/bash -x
read -p "enter value from 1/10/100/1000" no
case $no in
	1)
		echo Unit
	;;
	10)
		echo Ten
	;;	
	100)
		echo Hundred
	;;
	1000)
		echo Thousand
	;;
	*)
		echo invalid
	;;
esac

