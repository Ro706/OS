#!/bin/bash

sum=0
while true; do
    read -p "Enter a number (or 0 to exit): " number
    if [[ $number -eq 0 ]]; then
        break
    fi
    sum=$((sum + number))
done

echo "Sum of the entered numbers: $sum"

