#!/bin/bash

# Generate a random number between 1 and 100
secret=$((RANDOM % 100 + 1))

echo "Welcome to the Guessing Game!"
echo "Guess the secret number between 1 and 100."

while true; do
    read -p "Enter your guess: " guess

    if [[ $guess -eq $secret ]]; then
        echo "Congratulations! You guessed the correct number."
        break
    elif [[ $guess -lt $secret ]]; then
        echo "Try again! The secret number is higher."
    else
        echo "Try again! The secret number is lower."
    fi
done

