#!/bin/bash

# Check if abc.txt exist
# Delete if abc.txt exist
# Create abc.txt if not found

if [[ -a "abc.txt" ]]
then
echo "file exists"
rm abc.txt
echo "file deleted"
else
echo "file not found"
touch abc.txt
echo "file created"
fi
