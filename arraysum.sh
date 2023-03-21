#!/bin/bash

find_zero_sum() {
  # Get the array of integers as input
  local -a arr=("$@")
  local len=${#arr[@]}

  for ((i=0; i<$len-2; i++)); do
    for ((j=i+1; j<$len-1; j++)); do
      for ((k=j+1; k<$len; k++)); do
        if [ $((arr[$i] + arr[$j] + arr[$k])) -eq 0 ]; then
          echo "Found three integers that add up to zero: ${arr[$i]}, ${arr[$j]}, ${arr[$k]}"
          return
        fi
      done
    done
  done
  echo "No three integers add up to zero"
}

arr=(2 -3 1 4 -2)
find_zero_sum "${arr[@]}"
