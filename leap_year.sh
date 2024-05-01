#!/bin/bash

echo -n "Enter a year (YYYY): "
read y

a=$((y % 4))
b=$((y % 100))
c=$((y % 400))

if [ $((a == 0 && b != 0 || c == 0)) -eq 1 ]; then
    echo "$y is a leap year"
else
    echo "$y is not a leap year"
fi

