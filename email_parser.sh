#!/bin/bash

# Insert directory name where samples are stored
samples=~/samples
i=0
for email in $samples/*/*/*; do
    cat "$email" | formail -X From: >> "sample$i.txt"
    cat "$email" | formail -X Subject >> "sample$i.txt"
    cat "$email" | formail -I '' >> "sample$i.txt"
    (( i++ ))
done
