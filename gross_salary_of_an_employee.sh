#!/bin/bash

# Prompt the user to enter basic salary
echo "Enter basic salary:"
read bs

# Calculate various components
da=$(echo "$bs * 0.4" | bc)
hra=$(echo "$bs * 0.2" | bc)

# Calculate gross salary
gs=$(echo "$da + $hra + $bs" | bc)

# Display the gross salary
echo "Gross Salary: $gs"

