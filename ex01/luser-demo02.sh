#!/bin/bash

# Display the UID and Username of the current user
# Display if the current user is root

echo "Your UID is ${UID}"
echo "Your userid is ${USER}"

USER_NAME=$(id -un)
echo "Your userid is ${USER_NAME}"

if [[ ${UID} -eq '0' ]]
then echo "You are root"
else
echo "You are not root"
fi
