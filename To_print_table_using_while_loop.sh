#!/bin/bash

# Input from user
echo "Enter the number:"
read n

# Initialize i with 1
i=1

# Loop until i reaches 10
while [ $i -le 10 ]; do
    res=$((i * n))  # Calculate the result
    echo "$n * $i = $res"  # Print the result
    ((++i))  # Increment i by one
done

