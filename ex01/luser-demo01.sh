#!/bin/bash

echo "Scripting is Fun"

# Assigning variables
WORD='Script'

# Single quotes does not interpret variables
echo '$WORD'
 
echo "$WORD"

echo "This is a shell $WORD"


# Alternate using curly brackets
echo "This is a shell ${WORD}"
echo "${WORD}ing is fun!!"


# Combining Variables
ENDING='ed'

echo "This is ${WORD}${ENDING}"
