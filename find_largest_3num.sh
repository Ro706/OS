#!/bin/bash

# Prompt user to enter three numbers
echo "Enter three numbers:"
read num1
read num2
read num3

# Check which number is the largest
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
    echo "The largest number is $num1"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
    echo "The largest number is $num2"
else
    echo "The largest number is $num3"
fi

