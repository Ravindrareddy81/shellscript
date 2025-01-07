#!/bin/bash

userid=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
LOGS_FOlDER="var/log/shellscript-logs"
log_file=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"
validate()
{
    if [$1 -ne 0]; then
      echo -e "$2...$R failure"
    else
      echo -e "$2...$G success"
    fi
}
echo "script started executing at: $TIMESTAMP"&>>$log_file

if [ $userid -ne 0 ]; then
 echo "error:you must have sudo access."
 exit 1
fi
#if [ $userid -ne 0 ]; then
 # echo "Error: You must have sudo access to execute this script."
  #exit 1
#fi
dnf list installed mysql
if [$? -ne 0];then
  dnf install mysql -y &>>$log_file
  validate $? "installing mysql"
else
echo -e "mysql is already ... $Y installed"
fi
dnf list installed git
if [$? -ne 0];then
  dnf install git -y &>>$log_file
  validate $? "installing git"
else
echo -e "git is already ... $Y installed"
fi