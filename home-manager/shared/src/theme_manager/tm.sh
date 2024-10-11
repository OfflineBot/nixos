#!/usr/bin/env bash

# Check if an argument is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Echo the argument
echo "$1"
