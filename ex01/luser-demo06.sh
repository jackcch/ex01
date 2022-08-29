#!/bin/bash

clear

# Call the script with multiple parameters ./test.sh parm1 parm2 parm3 parm4
# Sample call /vagrant/ex01/test.sh john jane mike
# Exploring parameters with Shell Scripts

echo "Parameter 1: ${0}"
echo "Parameter 2: ${1}"
echo "Parameter 3: ${2}"

echo "Script Name: $(basename ${0})"
echo "Script Path: $(dirname ${0})"

# Number of parameters passed in by program
echo "Number of parameters: ${#}"

# Print all parameters with a forloop
for PARMS in "${@}"
do
    echo "${PARMS}"
done

# Demostrate shift and sleep in dowhile loop
while [[ "${#}" > 0 ]]
do
    echo "Para 1: ${1}"
    echo "Para 2: ${2}"
    echo "Para 3: ${3}"
    shift
    echo "Wait 2 seconds"
    sleep 2s
done

# Demonstrate file listing with for do loop
FILELIST="$(ls *.sh)"
for FILE in ${FILELIST}
do
    echo "${FILE}"
done

