#!/bin/bash

num=1
while [ $num -ne 0 ]; do
    read -p "Enter the number: " num
    if [ $num -eq 0 ]; then
        echo "Exiting..."
        break
    fi
    touch "${num}.txt"
    echo "${num}.txt file created!"
done

