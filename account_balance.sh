#!/bin/bash

# Initial balance
balance=1000

# Main program
while true; do
    echo "Choose an option:"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Display Balance"
    echo "4. Exit"
    read choice

    if [ $choice -eq 1 ]; then
        echo "Enter the amount to deposit:"
        read amount
        balance=$((balance + amount))
        echo "Amount deposited successfully."
    elif [ $choice -eq 2 ]; then
        echo "Enter the amount to withdraw:"
        read amount
        if [ $amount -gt $balance ]; then
            echo "Insufficient balance."
        else
            balance=$((balance - amount))
            echo "Amount withdrawn successfully."
        fi
    elif [ $choice -eq 3 ]; then
        echo "Your current balance is: $balance"
    elif [ $choice -eq 4 ]; then
        echo "Exiting..."
        break
    else
        echo "Invalid option"
    fi
done

