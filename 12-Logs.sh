#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
mkdir -p "$LOGS_FOLDER"

LOGS_FILE="$LOGS_FOLDER/$(basename "$0").log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with sudo access" | tee -a "$LOGS_FILE"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 ..... FAILURE" | tee -a "$LOGS_FILE"
        exit 1
    else
        echo "$2 ..... SUCCESS" | tee -a "$LOGS_FILE"
    fi
}

dnf install nginx -y
VALIDATE $? "Installing Nginx"

dnf install mysql -y
VALIDATE $? "Installing MySQL"

dnf install nodejs -y
VALIDATE $? "Installing NodeJS"