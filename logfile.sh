#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_FILE="/tmp/sourcefile.log"
if [ ! -d $SOURCE_FILE ]
 then 
 echo "folder not exit"
fi
FILES_TO_DELETE=$(find $SOURCE_FILE -type f -mtime +14 -name "*.log")
while IFS read -r line
do 
   echo "deleting file :  $line
   rm -r $line

done <<< $FILES_TO_DELETE