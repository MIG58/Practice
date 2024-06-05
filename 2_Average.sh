#!/bin/bash

# 2. write a shell script to find SUM, AVERAGE, and GRADE from marks of FOUR subjects.

read -p "Enter your 1st Subject Marks: " m1
read -p "Enter your 2nd Subject Marks: " m2
read -p "Enter your 3rd Subject Marks: " m3
read -p "Enter your 4th Subject Marks: " m4

sum=$((m1 + m2 + m3 + m4))
avg=$((sum/4))

echo "Total marks of the 4 subjects: $sum"
echo "Total Average marks of the subjects: $avg%"
