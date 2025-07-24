#!/bin/bash

USERID$(id -u)

if [ $USERDID -ne 0 ]

then

echo "EORROR :: you must have sudo access to excut this script"

exit 1

fi

dnf install mysqll -y

dnf install git -y

