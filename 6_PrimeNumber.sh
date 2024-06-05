#!/bin/sh

# 6. write a shell script to check whether a input number is PRIME or NOT.
read -p "Enter a number: " n

if [ "$n" -le 1 ]; then
    echo "$n is NOT PRIME"
    exit
fi

for ((i=2; i*i<=n; i++))
do
    if [ $((n % i)) -eq 0 ]; then
        echo "$n is NOT PRIME"
        exit
    fi
done

echo "$n is PRIME"
