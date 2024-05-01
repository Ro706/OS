#!/bin/bash

# Function to calculate BMI
calculate() {
    w=$1
    h=$2
    bmi=$(echo "scale=2; $w / ($h * $h)" | bc)
    echo "$bmi"
    #echo "BMI: $bmi"
}

# Function to evaluate BMI range and provide message
evaluate() {
    bmi=$1
    if (( $(echo "$bmi < 18.5" | bc -l) )); then
        echo "Underweight"
    elif (( $(echo "$bmi >= 18.5 && $bmi < 25" | bc -l) )); then
        echo "Normal weight"
    elif (( $(echo "$bmi >= 25 && $bmi < 30" | bc -l) )); then
        echo "Overweight"
    else
        echo "Obesity"
    fi
}

# Prompt the user to enter weight and height
echo "Enter weight in kilograms:"
read w
echo "Enter height in meters:"
read h

# Calculate BMI
result=$(calculate "$w" "$h")

# Evaluate BMI range and provide message
echo "BMI Result: $result"
evaluate "$result"
