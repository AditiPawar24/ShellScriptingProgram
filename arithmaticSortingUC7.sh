#!/bin/bash -x

declare -A RESULT

a=10;
b=20;
c=30;
RESULT[1]=$(( $a + $b * $c ))
RESULT[2]=$(( $a * $b + $c ))
RESULT[3]=$(( $c + $a / $b ))
RESULT[4]=$(( $a % $b + $c ))

echo ${RESULT[@]}

echo ${#RESULT[@]}

echo ${!RESULT[@]}

