#!/bin/bash

###Step 1: Find initial free disk space in root partition
initial_space=$(df / | grep / | awk '{print $4}')
echo "Initial free space: $initial_space KB"


###Step 2: Define function to clean a directory
cleanDir() {
    DIR=$1
    if [ -d "$DIR" ]; then
        echo "Cleaning directory: $DIR"
        sudo rm -rf "$DIR"/*
    else
        echo "Directory $DIR does not exist."
    fi
}


###Step 3: Declare directories to clean
directories=("/var/log" "$HOME/.cache")


###Step 4: Loop through each directory and clean it
for dir in "${directories[@]}"; do
    cleanDir "$dir"
done

###Step 5: Check disk space again
final_space=$(df / | grep / | awk '{print $4}')
echo "Final free space: $final_space KB"

###Step 6: Report space difference
freed_space=$((final_space - initial_space))

if [ "$freed_space" -le 0 ]; then
    echo "No significant disk space was freed."
else
    echo "Freed $freed_space KB of disk space."
fi
