#!/bin/bash

read -p "Enter three integers separated by spaces: " a b c

# Check whether sum is zero
if [[ $(($a + $b + $c)) -eq 0 ]];
 then
  echo "The sum of $a, $b, and $c adds up to zero"
else
  echo "The sum of $a, $b, and $c does not add up to zero"
fi
