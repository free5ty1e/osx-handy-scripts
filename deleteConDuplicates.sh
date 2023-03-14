#!/bin/bash

# Find all files with a .con extension
con_files=$(find . -type f -name "*.con")

# Loop through each .con file
while IFS= read -r con_file; do
    # Remove the .con extension from the filename
    filename=$(echo "$con_file" | sed 's/\.con$//')
    # echo "Checking if con_file $con_file has a duplicate named $filename"

    # Check if there is a file with the same filename but no extension
    if [ -e "$filename" ]; then
        echo "Removing file $con_file"
        rm "$con_file"
    fi
done <<< "$con_files"
