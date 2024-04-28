#!/bin/bash

if [ $# -ne 2 -o ! -d "$1" ]
then
    echo "Usage: ./finder.sh <directory> <filename>"
    exit 1
fi

numFiles=$(find "$1" -type f | wc -l)
numLines=$(grep -r "$2" "$1" | wc -l)

echo "The number of files are $numFiles and the number of matching lines are $numLines"
