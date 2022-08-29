#!/bin/bash

# Generate a random password using RANDOM built-in variable
PASSWORD=${RANDOM}
echo "${PASSWORD}"


# Generate random password using 2 sets of RANDOM numbers
PASSWORD=${RANDOM}${RANDOM}
echo "${PASSWORD}"


# Generate password using Date and Nanoseconds
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"


# Generate password using SHA1 hash checksum and extract first 8 bytes from the output
PASSWORD=$(date +%s%N | sha1sum | head -c8)
echo "${PASSWORD}"


# Add a symbol to the generated password
SPECIAL_CHARACTER=$(echo '!@#$%^&*()-+=' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"

# Shuffle the last set of generated password
# 1. Concatenate Password and Special Character
# 2. Fold each character to width 1
# 3. Shuffle each line of the output
# 4. use tr -d to delete off the CR or \n to join the strings back together
NEWPASS=$(echo ${PASSWORD}${SPECIAL_CHARACTER} | fold -w1 | shuf | tr -d '\n')
echo "${NEWPASS}"

exit 0
