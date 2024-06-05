#!/bin/bash

# 5. write a shell script to input a number and Find reverse of this number and check whether this input number is PALINDROME or NOT.

read -p "Enter a number: " n

cpy=$n

while [ $n -gt 0 ]
do 
    r=$((n % 10))
    s=$((s * 10 + r))
    n=$((n / 10))
done

if [ $s == $cpy ]; then
    echo "$cpy is Palindrome"
else
    echo "$cpy is Not Palindrome"
fi