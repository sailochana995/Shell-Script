#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
  echo "ERROR:: You must have sudo access"
  fi

  dnf list installed mysql
  if [ $? -ne 0 ]
  then
    dnf install mysqll -y
    echo "install MYSQL FAILURE..."
    else
     echo "install MYSQL SUCCESSFULL..."
      fi

list installed git
if [ $? -ne 0] then
dnf install git -y
echo "install git is failure..."
else
   echo "install git is succesfull...?
   fi
