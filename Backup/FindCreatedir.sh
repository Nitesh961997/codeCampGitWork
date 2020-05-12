#!/bin/bash -x
read -p  "name of folder" Folder;
	if(ls | grep $Folder); #find . -iname $Folder
	then 
		echo folder is present;
	else
		mkdir $Folder;
	fi
