#!/bin/sh

c=0

read -p "Enter a number to check prime or not: " n

for (( i=2; i<n; i++ ))
do
    if [ $((n % i)) -eq 0 ]; then
        ((c++))
    fi
done

if [ $c -eq 0 ] && [ $n -gt 1 ]; then
    echo "Prime Number"
else
    echo "Not Prime"
fi
