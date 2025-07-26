#!/bin/bash

USERID=$(id -u)
VALIDATE(){

 if [ $? -ne 0 ]
then 
     echo "$2... FAILLED"
     exit 1
else
     echo "$2... SUCCESSFULL"
   fi

}

if [ $USERID -ne 0 ]
then
   echo "ERROR:: you must have sudo access"
   exit 1
fi
   
   dnf list installed mysql
if [ $? -ne 0 ]
then
     dnf install mysql -y
     VALIDATE $? "installing mysql"

  else 
      echo "mysql is allready... INSTALLED"
fi
   
   dnf list installed git
if [ $? -ne 0 ]
then
     dnf install git -y
    VALIDATE $? "installing git"
  else  echo "git is already... INSTALLED" 
fi