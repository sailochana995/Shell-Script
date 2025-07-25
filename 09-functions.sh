#!/bin/bash
USERID$(id -u)

if [ $USERDID -ne 0 ]
then 
echo "ERROR:: You must have sudo access"
fi

if [ $USERID -ne 0 ]
then 
    dnf install mysql -y
then
   echo "installing mysqll is failure..."
 else
   echo "install mysqll successfull..."
   fi  

if [ $USERID -ne 0 ]

then
    dnf install git -y
then
  echo "installing git is failure"

else
  echo "installing git is successfull"
  fi
