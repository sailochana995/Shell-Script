#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR:: you must have sudo access"
   exit 1
fi
   
   dnf list installed mysql
if [ $? -ne 0 ]
then
     dnf install mysql -y
if [ $? -ne 0 ]
then 
   echo "installing mysql is... FAILLED"
   exit 1
else
   echo "installing mysql is... SUCCESSFULL"
fi
  else "mysql is allready... INSTALLED"
fi
   
   dnf list installed git
if [ $? -ne 0 ]
then
     dnf install git -y
if  [ $? -ne 0 ]
then 
   echo "installing git is... FAILLED"
   exit 1
else 
   echo "installing git is... SUCCESSFULL"
fi
  else "git is already... INSTALLED"
fi