#!/bin/bash

# Password checker using regex
echo "Enter your password:"
read password

if [[ $password =~ ^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$ ]]; then
    echo "Your password is strong."
else
    echo "Your password is weak. It should contain at least 8 characters including letters, digits, and special characters."
fi

