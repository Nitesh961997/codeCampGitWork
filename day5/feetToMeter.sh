#!/bin/bash/ -x
read -p "enter value in feet= " inch
#echo $inch inch=$(($inch/12))foot
awk -v inch="$inch" -v b="0.3048" 'BEGIN { printf "\n\"meter\": %s", inch*b }'



