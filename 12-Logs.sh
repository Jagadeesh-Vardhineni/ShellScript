#!/bin/bash
USERID=$(id -u)
Logs_Folder="var/log/shell-script"
Logs_file="var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
   
   echo "Please run the script with Sudo access" |  $Logs_file
   exit 1
fi

mkdir -p $Logs_Folder

VALIDATE(){
    if [ $1 -ne 0 ]; then
      
      echo "$2..... is failure"
      exit 1
    else 
      echo "$2..... is Success"
    fi
      

}

dnf install nginx -y 

validate $? "Installing Nginx"

