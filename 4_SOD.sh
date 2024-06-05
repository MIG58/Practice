#!/bin/bash
# 4. write a shell script to input a number and Find sum of digits, count the total number of digits.

count=0
sum=0

read -p "Enter a number: " n

num=$n

while [ $n -gt 0 ]
do
    digit=$((n % 10))
    ((count++))
    sum=$((sum + digit))
    n=$((n / 10))
done

# Print the total number of digits and the sum of digits
echo "Total number of digits in $num: $count"
echo "Sum of digits in $num: $sum"
