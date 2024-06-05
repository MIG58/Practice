#!/bin/bash

# 3. write a shell script to find the factorial of a given input integer number.

read -p "Enter a number for factorial: " n

f=1

for((i=1;i<=n;i++)) 
do
    f=$(($f * i))
done

echo "The Factorial of $n: "$f;