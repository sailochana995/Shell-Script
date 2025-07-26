#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
# LOG_FOLDER=$(echo $0 | cut -d "." -f1 )this is for to cut .sh
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){

 if [ $? -ne 0 ]
then 
     echo -e "$2... $R FAILLED $N"
     exit 1
else
     echo -e "$2... $G SUCCESSFULL $N"
   fi

}

echo "Script execustion started at: $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
   echo "ERROR:: you must have sudo access"
   exit 1
fi
   
   dnf list installed mysql &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
then
     dnf install mysql -y  &>>$LOG_FILE_NAME
     VALIDATE $? "installing mysql"

  else 
      echo -e "mysql is allready... $Y INSTALLED $N"
fi
   
   dnf list installed git &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
then
     dnf install git -y &>>$LOG_FILE_NAME
    VALIDATE $? "installing git"
  else  echo -e "git is already... $Y INSTALLED $N" 
fi

  for package in $@
  do 
     dnf list installed $package &>>$LOG_FILE_NAME
     if [ $? -ne 0 ]
    then
      dnf install $package -y &>>$LOG_FILE_NAME
      VALIDATE $? "installing $package"
    else
      echo -e "$package already... $Y INSTALLED $N"
    fi
  done