#!/bin/bash

echo "Enter a number:"
read n

is_prime() {
  if [ $1 -lt 2 ]; then
    return 1
  fi
  for ((i=2; i<$1; i++)); do
    if [ $(($1 % $i)) -eq 0 ]; then
      return 1
    fi
  done
  return 0
}

declare -a factors

for ((i=2; i<=$n/2; i++)); do
  if [ $(($n % $i)) -eq 0 ]; then
    is_prime $i
    if [ $? -eq 0 ]; then
      factors+=($i)
    fi
  fi
done

echo "Prime factors of $n: ${factors[*]}"
