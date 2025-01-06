#!/bin/bash

userid=$(id -u)

# Check if the script is run as root
if [ $userid -ne 0 ]; then
  echo "Error: You must have sudo access to execute this script."
  exit 1
fi

# Check if MySQL is installed
dnf list installed mysql > /dev/null 2>&1
if [ $? -ne 0 ]; then
  dnf install mysql -y
  if [ $? -ne 0 ]; then
    echo "Installing MySQL failed."
    exit 1
  else
    echo "MySQL installed successfully."
  fi
else
  echo "MySQL is already installed."
fi

# Check if Git is installed
dnf list installed git > /dev/null 2>&1
if [ $? -ne 0 ]; then
  dnf install git -y
  if [ $? -ne 0 ]; then
    echo "Installing Git failed."
    exit 1
  else
    echo "Git installed successfully."
  fi
else
  echo "Git is already installed."
fi
