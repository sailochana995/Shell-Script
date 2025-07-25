#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
  echo "ERROR:: You must have sudo access"
  fi

  dnf list installed mysqll
  if [ $? -ne 0 ]
  then
    dnf install mysql -y
    echo "install MYSQL FAILURE..."
    else
      "install MYSQL SUCCESSFULL..."
      fi
      