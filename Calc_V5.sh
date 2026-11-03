#!/bin/bash

#Author: Danylo Tselikov Reviewer: Aj Sunega

# Check if fewer than two command-line arguments were provided
if [ $# -lt 2 ]; then
    # Print a clear usage message showing how to run the script
    echo "Usage: ./calc.sh <number1> <number2>"
    # Stop the script with an error code
    exit 1
fi

# Check that the first argument is a valid non-negative whole number
case $1 in
    ''|*[!0-9]*)
        # Print an error message if the first input is not a whole number
        echo "Error: '$1' is not a valid whole number."
        # Exit the script with an error status
        exit 1
        ;;
esac

# Check that the second argument is a valid non-negative whole number
case $2 in
    ''|*[!0-9]*)
        # Print an error message if the second input is not a whole number
        echo "Error: '$2' is not a valid whole number."
        # Exit the script with an error status
        exit 1
        ;;
esac

# Store the first and second arguments into readable variables
num1=$1
num2=$2

# Calculate the sum, difference, and product using expr
sum=$(expr $num1 + $num2)
diff=$(expr $num1 - $num2)
prod=$(expr $num1 \* $num2)

# Print the sum, difference, and product
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"

# Check if the second number is zero before dividing
if [ $num2 -eq 0 ]; then
    # Print a warning message instead of dividing by zero
    echo "Quotient and Remainder: Cannot divide by zero"
else
    # Calculate the quotient and remainder using expr
    quot=$(expr $num1 / $num2)
    rem=$(expr $num1 % $num2)
    # Print the quotient and remainder results
    echo "Quotient: $quot"
    echo "Remainder: $rem"
fi

# Comparing numbers to determine which is larger or if they are equal
if [ $num1 -gt $num2 ]; then
    # Print that the first number is larger
    echo "$num1 is larger"
elif [ $num2 -gt $num1 ]; then
    # Print that the second number is larger
    echo "$num2 is larger"
else
    # Print that both numbers are equal
    echo "Both numbers are equal"
fi

# Find the remainder of the first number divided by 2 
rem1=$(expr $num1 % 2)
if [ $rem1 -eq 0 ]; then
    # Print if the first number is even
    echo "$num1 is even"
else
    # Print if the first number is odd
    echo "$num1 is odd"
fi

# Find the remainder of the second number divided by 2 
rem2=$(expr $num2 % 2)
if [ $rem2 -eq 0 ]; then
    # Print if the second number is even
    echo "$num2 is even"
else
    # Print if the second number is odd
    echo "$num2 is odd"
fi

# Copy the numbers for GDC calculations
a=$num1
b=$num2

# While to calculate GCD using Euclidean algorithm
while [ $b -ne 0 ]; do
    # Calculate the remainder
    temp=$(expr $a % $b)
    
    a=$b
    # remainer becomes the new b
    b=$temp
done

# final GCD 
echo "GCD: $a"