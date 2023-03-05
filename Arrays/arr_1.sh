#!/bin/bash

# Generate 10 random 3-digit numbers
for i in {1..10}; 
do
  arr[$i]=$((RANDOM % 900 + 100))
done

echo "Original array: ${arr[*]}"

# Find the second largest and second smallest elements
largest=${arr[0]}
second_largest=${arr[0]}
smallest=${arr[0]}
second_smallest=${arr[0]}

for i in "${arr[@]}"; 
do
  if [[ "$i" -gt "$largest" ]]; 
   then
    second_largest="$largest"
      largest="$i"
  elif [[ "$i" -gt "$second_largest" && "$i" -ne "$largest" ]]; 
    then
    second_largest="$i"
  fi

  if [[ "$i" -lt "$smallest" ]];
   then
    second_smallest="$smallest"
    smallest="$i"
  elif [[ "$i" -lt "$second_smallest" && "$i" -ne "$smallest" ]];
   then
    second_smallest="$i"
  fi
done

echo "Second largest element: $second_largest"
echo "Second smallest element: $second_smallest"
