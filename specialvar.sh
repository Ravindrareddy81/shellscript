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

function ravi(){
    echo "hello,$1"
}

echo"enter the file"
read source_file
if [! -f "$source_file"];then
echo "error:the "source_file'doesn't exist"
exit 1
fi

echo"enter the file"
read source_file
if [! -f "$source_file"];then
echo "error:the "source_file 'doesn,t exist"
exit 1
fi
backup_file ="$(source_file)_backup_$(date+ '%Y%m%d_%H%M%S')"
cp "$source_file" "$backup_file"