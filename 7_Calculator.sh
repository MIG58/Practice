#!/bin/bash
# 7. Write a shell script to make a menu driven calculator with float(real) values by performing following
# operations: 1.Addition 2. Subtraction 3. Multiplication 4. Division 5. Remainder 6. square root 7.power 0.To Exit

# Function to perform addition
addition() {
    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2
    result=$(awk "BEGIN {print $num1 + $num2}")
    echo "Result: $result"
}

# Function to perform subtraction
subtraction() {
    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2
    result=$(awk "BEGIN {print $num1 - $num2}")
    echo "Result: $result"
}

# Function to perform multiplication
multiplication() {
    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2
    result=$(awk "BEGIN {print $num1 * $num2}")
    echo "Result: $result"
}

# Function to perform division
division() {
    echo -n "Enter dividend: "
    read num1
    echo -n "Enter divisor: "
    read num2
    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero"
    else
        result=$(awk "BEGIN {print $num1 / $num2}")
        echo "Result: $result"
    fi
}

# Function to calculate remainder
remainder() {
    echo -n "Enter dividend: "
    read num1
    echo -n "Enter divisor: "
    read num2
    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero"
    else
        result=$(awk "BEGIN {print $num1 % $num2}")
        echo "Result: $result"
    fi
}

# Function to calculate square root
square_root() {
    echo -n "Enter a number: "
    read num
    result=$(awk "BEGIN {print sqrt($num)}")
    echo "Result: $result"
}

# Function to calculate power
power() {
    echo -n "Enter base: "
    read base
    echo -n "Enter exponent: "
    read exponent
    result=$(awk "BEGIN {print $base ^ $exponent}")
    echo "Result: $result"
}

# Main menu
while true
do
    echo "Menu:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Remainder"
    echo "6. Square root"
    echo "7. Power"
    echo "0. Exit"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1) addition ;;
        2) subtraction ;;
        3) multiplication ;;
        4) division ;;
        5) remainder ;;
        6) square_root ;;
        7) power ;;
        0) echo "Exiting..."; exit ;;
        *) echo "Invalid choice";;
    esac
done
