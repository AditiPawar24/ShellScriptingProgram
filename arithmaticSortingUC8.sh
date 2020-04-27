#!/bin/bash -x

declare -A RESULT

a=10;
b=20;
c=30;
RESULT[1]=$(( $a + $b * $c ))
RESULT[2]=$(( $a * $b + $c ))
RESULT[3]=$(( $a % $b + $c ))
RESULT[4]=$(( $c + $a / $b ))

echo ${RESULT[@]}

#echo ${#RESULT[@]}

echo ${!RESULT[@]}

INPUT=${RESULT[@]}

for (( i=1; i<=${#RESULT[@]}; i++ ))
do
min=$i
  for(( j=i+1; j<=${#RESULT[@]}; j++ ))
  do
    if [[ $min -ge $j ]]
    then
           min=$j
     fi
    done
   if [[ $min != $i ]]
   then
       t=$i
       $i=$min
       $min=t
   fi

done

echo "sorted array"
echo ${RESULT[@]}

