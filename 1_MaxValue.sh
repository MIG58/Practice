#!/bin/bash

# 1. write a shell script to find maximum value from three input integer numbers.

read -p "Enter 1st Number: " a

read -p "Enter 2nd Number: " b

read -p "Enter 3rd Number: " c

if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
    echo "$a is Greater"
elif [ "$b" -gt "$a" ] && [ "$b" -gt "$c" ]; then
    echo "$b is Greater"
else 
    echo "$c is Greater"
fi

