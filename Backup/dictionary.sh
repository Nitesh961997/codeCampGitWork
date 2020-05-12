#!/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="how"
echo "Dog Sound" ${sounds[dogs]}
echo "All animal sound" ${sounds}
echo "Animal" $(!sound[@])
echo "Number of animals " ${#sounds[@]}
unset sounds[dog]

