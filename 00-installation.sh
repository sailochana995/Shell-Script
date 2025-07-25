#!/bin/bash

USERID=$(id -u)

if [ USERID$ -ne 0 ]
     
     then

    echo "ERROR:: You must have sudo access to execute this script"

fi

        dnf install mysql -y
        
if   [ $? -ne 0 ]

then

   echo "installing MySQL... is failure"

   exit 1

else 

    "installing MySQL... is successful"
fi


dnf install git -y

if [ $? -ne 0 ]

  then 

     echo "installing git... is failure"
  else
    echo "installing git... is successful"
fi
   

