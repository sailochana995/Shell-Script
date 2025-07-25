#!/bin/bash

USERID=$(id -u)

VALIDATE(){

    if   [ $1 -ne 0 ]

then

   echo "$2... is failure"

   exit 1

else 

    "$2... is successful"
fi


}

if [ USERID$ -ne 0 ]
     
     then

    echo "ERROR:: You must have sudo access to execute this script"

fi

        dnf install mysql -y

        VALIDATE $? "installing mysql"
        



dnf install git -y

VALIDATE $? "installing git"

fi
