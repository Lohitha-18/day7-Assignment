#!/bin/bash

declare -a nums
for ((i=0; i<10; i++)); do
  nums[$i]=$((RANDOM % 900 + 100))
done

echo "Array: ${nums[*]}"

largest=${nums[0]}
second_largest=${nums[0]}
for ((i=0; i<10; i++)); do
  if [ ${nums[$i]} -gt $largest ]; then
    second_largest=$largest
    largest=${nums[$i]}
  elif [ ${nums[$i]} -gt $second_largest -a ${nums[$i]} -ne $largest ]; then
    second_largest=${nums[$i]}
  fi
done
echo "Second largest element: $second_largest"

smallest=${nums[0]}
second_smallest=${nums[0]}
for ((i=0; i<10; i++)); do
  if [ ${nums[$i]} -lt $smallest ]; then
    second_smallest=$smallest
    smallest=${nums[$i]}
  elif [ ${nums[$i]} -lt $second_smallest -a ${nums[$i]} -ne $smallest ]; then
    second_smallest=${nums[$i]}
  fi
done
echo "Second smallest element: $second_smallest"
