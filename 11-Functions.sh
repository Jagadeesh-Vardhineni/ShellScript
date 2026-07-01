#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "Please run the file with Sudo access"
  exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
      echo "$2 .... Failure"
      exit 1
    else 
       echo "$2....Sucess"
   fi
}

dnf install nginx -y
validate $? "Installing Nginx"

dnf install  mysql -y
validate $? "Installing Mysql"