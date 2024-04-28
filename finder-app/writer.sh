#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: ./writer.sh <writefile> <writestring>"
    exit 1
fi

if [ ! -f "$1" ]
then
    mkdir -p "$(dirname "$1")"
    touch "$1"
fi

echo "$2" > "$1"
