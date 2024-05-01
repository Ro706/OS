#!/bin/bash

read -p "Enter a number: " num

# Check if the number is even or odd
if [ $((num % 2)) -eq 0 ]; then
    echo "The number $num is even."
else
    echo "The number $num is odd."
fi

