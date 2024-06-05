#!/bin/bash

# 8. write a shell script Find temperature from 90 to 110 in Fahrenheit to Celsius and vice versa.

# Function to convert Fahrenheit to Celsius
fahrenheit_to_celsius() {
    local f=$1
    local c=$(awk "BEGIN {print ($f - 32) * 5 / 9}")
    echo "$f°F is $c°C"
}

# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit() {
    local c=$1
    local f=$(awk "BEGIN {print ($c * 9 / 5) + 32}")
    echo "$c°C is $f°F"
}

# Main script
echo "Choose the conversion:"
echo "1. Fahrenheit to Celsius"
echo "2. Celsius to Fahrenheit"
echo "0. Exit"
read -p "Enter your choice: " choice

case $choice in
    1)
        read -p "Enter temperature in Fahrenheit: " temp
        fahrenheit_to_celsius $temp
        ;;
    2)
        read -p "Enter temperature in Celsius: " temp
        celsius_to_fahrenheit $temp
        ;;
    0)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
