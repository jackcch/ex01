#!/bin/bash

# Check if superuser privileges are present
if [[ "${UID}" -ne 0 ]]
then
    echo 'Require superuser or root to run'
    exit 1
fi

