#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file1> <file2> <output_file>"
    exit 1
fi

# Assign arguments to variables
file1="$1"
file2="$2"
output_file="$3"

# Check if both input files exist
if [ ! -f "$file1" ]; then
    echo "Error: $file1 does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: $file2 does not exist."
    exit 1
fi

# Get the first 15 lines from the first file
head -n 15 "$file1" > "$output_file"

# Get the last 30 lines from the second file and append to the output file
tail -n 30 "$file2" >> "$output_file"

echo "The first 15 lines from $file1 and the last 30 lines from $file2 have been saved to $output_file."
