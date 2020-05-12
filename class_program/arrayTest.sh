#!/bin/bash -x
counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Banana"

z=${Fruits[1]}
echo ${Fruits[1]}
echo $z
