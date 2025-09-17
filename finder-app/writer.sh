#!/bin/sh
# Script to write content to a file
# Author: Your Name

set -e
set -u

# Check arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required: <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create directory if needed
dir=$(dirname "$writefile")
mkdir -p "$dir"

# Write string to file
echo "$writestr" > "$writefile"

# Check if file created successfully
if [ ! -f "$writefile" ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi
