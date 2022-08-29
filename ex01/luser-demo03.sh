#!/bin/bash

USER_UID_TO_CHECK=1000
USER_ID_TO_CHECK='vagrant'
USER_NAME=$(id -un)


if [[ ${UID} -ne ${USER_UID_TO_CHECK} ]]
then
    echo "Your UID is not ${USER_UID_TO_CHECK}"
    exit 1
fi
echo "Your UID is ${UID}"


if [[ ${USER_NAME} != ${USER_ID_TO_CHECK} ]]
then
    echo "Your user ID is not ${USER_ID_TO_CHECK}"
    exit 1
fi
echo "Your User ID is ${USER_NAME}"

id -un

# Check if last command was executed successfully
if [[ "${?}" -ne 0 ]]
then
    echo "Last command ended abnormally"
fi


