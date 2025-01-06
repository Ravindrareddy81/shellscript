#!/bin/bash

userid=$(id -u)
if[$userid -ne 0];then
echo "error:you must have sudo access"
exit 1
fi
dnf list installed mysql
if [$? -ne 0];then
  dnf install mysql -y
   if[$? -ne 0];then
      echo "mysql is installed:failure"
      exit 1
    else
       echo "mysql us installed:success"
    fi
else
echo "mysql is already installed"
fi
