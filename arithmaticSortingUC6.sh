#!/bin/bash -x

declare -A RESULT

a=10;
b=20;
c=30;
RESULT[1]=$(( $a + $b * $c ))
RESULT[2]=$(( $a * $b + $c ))
RESULT[3]=$(( $c + $a / $b ))
RESULT[4]=$(( $a % $b + $c ))

echo ${RESULT[1]}
echo ${RESULT[2]}
echo ${RESULT[3]}
echo ${RESULT[4]}


echo ${RESULT[@]}

