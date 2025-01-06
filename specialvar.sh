#! /bin/bash
echo "print all variables:$@"
echo "print number of variables:$#"
echo "print script name:$0"
echo "present working directory:$pwd"
echo "user is running this script:$user"
echo "home directory of cureent user:$home"
echo "process id of current script:$$"
sleep 60 &
echo "process id of last command in background:$!"