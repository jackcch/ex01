#!/bin/bash

# Read User ID, Name and Password from Command line
# create new user with comment as User real name
# Set the password for the user
# Set the password as expired to force user to change password upon login
# Notes
#   The quotes surrounding the username "${USERNAME}" ensures that the spaces between names included
#   Run this script using root or sudo 
#   su - id where - indicates the environment to be set per login user


read -p 'Input User ID: ' USERID
read -p 'Input the User Name: ' USERNAME
read -p 'Input User Password: ' PASSWORD


adduser -c "${USERNAME}" -m ${USERID}
echo ${PASSWORD} | passwd --stdin ${USERID}
passwd -e ${USERID}


