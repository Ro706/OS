#!/bin/bash
compare_strings() {
    if [ "$1" = "$2" ]; then
        echo "Strings are equal."
    else
        echo "Strings are not equal."
    fi
}
concat_strings() {
    concatenated="$1$2"
    echo "Concatenated string: $concatenated"
}
length() {
    length=$(echo -n "$1" | wc -c)
    echo "Length of string: $length"
}
odd() {
    odd_chars=$(echo "$1" | sed 's/./&\n/g' | awk 'NR % 2 == 1' | tr -d '\n')
    echo "Odd position characters: $odd_chars"
}
is_palindrome() {
    reversed=$(echo "$1" | rev)
    if [ "$1" = "$reversed" ]; then
        echo "The string is a palindrome."
    else
        echo "The string is not a palindrome."
    fi
}
reverse_string() {
    reversed=$(echo "$1" | rev)
    echo "Reverse of the string: $reversed"
}
occur() {
    occurrence=$(echo "$1" | grep -o "$2" | wc -l)
    echo "Occurrence of character '$2' in the string: $occurrence"
}
delete() {
    shortest_front_removed=${1#"$2"}
    shortest_back_removed=${1%"$2"}

    if [ "$shortest_front_removed" != "$1" ] && [ "$shortest_back_removed" != "$1" ]; then
        echo "Shortest substring match removed from front: $shortest_front_removed"
        echo "Shortest substring match removed from back: $shortest_back_removed"
    else
        echo "Shortest substring match not found."
    fi

    longest_front_removed=${1##"$2"}
    longest_back_removed=${1%%"$2"}

    if [ "$longest_front_removed" != "$1" ] && [ "$longest_back_removed" != "$1" ]; then
        echo "Longest substring match removed from front: $longest_front_removed"
        echo "Longest substring match removed from back: $longest_back_removed"
    else
        echo "Longest substring match not found."
    fi
}

echo "Enter the first string: "
read str1
echo "Enter the second string: "
read str2
compare_strings "$str1" "$str2"
concat_strings "$str1" "$str2"
length "$str1"
odd "$str1"
is_palindrome "$str1"
reverse_string "$str1"
occur "$str1" "a"
delete"$str1" "substring"

