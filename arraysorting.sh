#!/bin/bash

declare -a nums
for ((i=0; i<10; i++)); do
  nums[$i]=$((RANDOM % 900 + 100))
done

echo "Unsorted Array: ${nums[*]}"

sorted_nums=($(echo "${nums[*]}" | tr ' ' '\n' | sort -n))
echo "Sorted Array: ${sorted_nums[*]}"


echo "Second largest element: ${sorted_nums[8]}"

echo "Second smallest element: ${sorted_nums[1]}"
