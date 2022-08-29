#!/bin/bash

# Make sure the script is being executed with superuser privileges
if [[ ${UID} -ne 0 ]]
then
    echo "Superuser privileges required. Please execute with root"
    exit 1
fi


# Get the username(login).
read -p 'Enter User ID: ' USERID

# Get the realname(contents for the description field)
read -p 'Enter User Name: ' USERNAME

# Get the password
read -p 'Enter User Password: ' PASSWORD

# Create the user with the password
adduser -c "${USERNAME}" -m ${USERID}

# Check to see if the useradd command succeeded
if [[ "${?}" -ne 0 ]]
then
   echo 'Add user profile not successful'
   exit 1
fi

# Set the password
echo ${PASSWORD} | passwd --stdin ${USERID}

# Check to see if the passwd command succeeded
if [[ "${?}" -ne 0 ]]
then
   echo 'User password change failed'
   exit 1
fi

# Force password to change on next login
passwd -e ${USERID}

# Display the username, password and the host where the user was created.
echo '============================================='
echo "Hostname: ${HOSTNAME}"
echo
echo "User ID: ${USERID}"
echo 
echo "Name: ${USERNAME}"
echo
echo "Initial Password: ${PASSWORD}"
echo "============================================"
exit 0




