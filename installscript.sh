#! /bin/bash
userid=$(id -u)

if[ $userid -ne 0 ];
then
echo "error:you must have sudo access to execute"
exit 1
fi
dnf list installed mysql
if[ $? -ne 0 ];
then
dnf install mysql -y
   if[ $? -ne 0 ];
   then
     echo "installing mysql is failure"
      exit 1
   else
     echo "installing mysql is success"
   fi
else
    echo "mysql is already installed"
fi

dnf list installed git
if[ $? -ne 0 ];
then
dnf install git -y
  if[ $? -ne 0 ];
   then
     echo "installing git is failure"
      exit 1
   else
     echo "installing git is success"
   fi
else
    echo "git is already installed"
fi