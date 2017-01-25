#!/bin/bash
echo "Finding each file in current folder structure and zipping individually"

#for file in "$1"; do
#filename=$(basename {})
#    extension="${filename##*.}"
#    headerfilename="${filename%.*}"
#    filenameOnly="${headerfilename%.*}"
#    zip -9 "$filenameOnly.zip" "$file"
#done

#find . -name "*$1*" -print -exec zip -9 "${'{}'##*/}" '{}' \;

find . -type f -execdir zip -9 '{}.zip' '{}' \;
