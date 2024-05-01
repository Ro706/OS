#!/bin/bash

echo "Enter a character: "
read char

case $char in
    [aeiou])
        echo "$char is a vowel."
        ;;
    [bcdfghjklmnpqrstvwxyz])
        echo "$char is a consonant."
        ;;
    *)
        echo "$char is not a valid alphabet."
        ;;
esac

