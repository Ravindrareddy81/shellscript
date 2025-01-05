#! bin/bash
number1=$1
number2=$2

timestamp=$(date)
echo "script executed at:"$timestamp"
sum=$(($number1+$number2))
echo "Sum of two numbers:$sum"