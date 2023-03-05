#!/bin/bash

read -p "Enter a number: " n

# Compute prime factors of n and store them in an array
declare -a factors
i=2
while [[ $n -gt 1 ]];
do
  if [[ $(($n % $i)) -eq 0 ]];
   then
    factors+=($i)
    n=$(($n / $i))
  else
    i=$(($i + 1))
  fi
done

# Print out the array of factors
echo "Prime factors of $n: ${factors[@]}"
