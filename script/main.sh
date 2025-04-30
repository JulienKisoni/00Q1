#!/bin/bash

file_path="./private.txt"

# Read username and password from user
read -p "Enter username: " input_username
read -s -p "Enter password: " input_password
echo

# Read the correct password from file
correct_password=$(< $file_path)

# Check username and password
if [[ "$input_username" == "root" && "$input_password" == "$correct_password" ]]; then
    echo "User is Valid"
else
    echo "User is not valid"
fi