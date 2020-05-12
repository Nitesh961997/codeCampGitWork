#!/bin/bash -x
for filename in $(ls)
do 
	ext=${filename##*\.}
	case "$ext" in
		java) echo "$filename : Java Source file"
		;;
		txt)  echo "$filename : txt File"
		;;
		sh)   echo "$filename : shell script"
		;;
		*)    echo "$filename : not processed"
		;;
	esac
done
