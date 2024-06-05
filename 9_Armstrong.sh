#!/bin/bash

# 9. write a shell script to check whether a input number is ARMSTRONG or NOT.

# Function to calculate the power of a number
power() {
    local base=$1
    local exp=$2
    local result=1
    for ((i=1; i<=exp; i++)); do
        result=$((result * base))
    done
    echo $result
}

# Function to check if a number is Armstrong
is_armstrong() {
    local num=$1
    local original_num=$num
    local sum=0
    local digit_count=${#num}

    while [ $num -gt 0 ]; do
        local digit=$((num % 10))
        sum=$((sum + $(power $digit $digit_count)))
        num=$((num / 10))
    done

    if [ $sum -eq $original_num ]; then
        echo "$original_num is an Armstrong number."
    else
        echo "$original_num is NOT an Armstrong number."
    fi
}

# Main script
read -p "Enter a number: " num
is_armstrong $num
