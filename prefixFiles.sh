#!/bin/bash
echo "Adding prefix $1 to all files in this folder..."

if [ $# -eq 0 ]
    then
        echo "Requires a prefix as first parameter"
else 
    for f in *; do mv "$f" "$1$f"; done
fi
