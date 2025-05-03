#!/bin/bash

echo "Welcome to the Calculator Script"

# Prompt and read the first number
echo "Enter the First Number:"
read num1

# Prompt and read the second number
echo "Enter the Second Number:"
read num2

# Prompt and read the operator
echo "Please Enter the Operator (+, -, *, /):"
read Operator

# Perform calculation based on the operator
if [ "$Operator" == "+" ]; then
    result=$((num1 + num2))
elif [ "$Operator" == "-" ]; then
    result=$((num1 - num2))
elif [ "$Operator" == "*" ]; then
    result=$((num1 * num2))
elif [ "$Operator" == "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        exit 1
    fi
    result=$((num1 / num2))
else
    echo "Invalid operator"
    exit 1
fi

echo "The result is: $result"
