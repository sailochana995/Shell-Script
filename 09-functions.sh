#!/bin/bash

USERID=$(id -u)

VALIDATE(){


}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access"
    exit 1
  fi

  dnf list installed mysql
  if [ $? -ne 0 ]
  then
    dnf install mysqll -y
    if [ $? -ne 0 ]
    then
    echo "install MYSQL FAILURE..."
    exit 1
    else
     echo "install MYSQL SUCCESSFULL..."
      fi

dnf list installed git

if [ $? -ne 0] then

dnf install git -y

echo "install git is failure..."
exit 1

   echo "install git is succesfull...?
   fi
