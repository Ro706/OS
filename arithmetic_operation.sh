#!/bin/bash

echo "enter 1st no:"
read a
echo "enter 2nd no:"
read b

val=`expr $a + $b`
echo "The addition of two nos is $val"

val=`expr $a - $b`
echo "The subtraction of two nos is $val"

val=`expr $a \* $b`
echo "The product of two nos is $val"

val=`expr $a / $b`
echo "The division of two nos is $val" 

val=`expr $a % $b`
echo "The remainder of two nos is $val" 

#if sentences
if [ $a == $b ]
then
echo "a is equal to b"
fi
if [ $a != $b ] 
then
echo "a is not equal to b"
fi


