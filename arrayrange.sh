#!/bin/bash

find_repeated_digits() {
  local -a arr=()
  for ((i=0; i<=100; i++)); do
    if [[ $(echo "$i" | grep -E '(.)\1') ]]; then
      arr+=("$i")
    fi
  done
  echo "Digits repeated twice in the range 0-100: ${arr[*]}"
}

find_repeated_digits
