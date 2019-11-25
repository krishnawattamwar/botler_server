#!/bin/sh
NOTIFYMAIL="itsupport@graymatrix.com"
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  echo $output >  /dev/null 2>&1
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $usep -ge 75 ]; then
    echo "Hello Team, \n\nServer is Running out of space: \"$partition ($usep%)\" as on $(date +" %d/%m/%Y at %R") \nNeed to be done maintenance activity as soon as possbile. \n\n\nRegards, \nTeam ItSupport"  | mail -s "Alert: Botler PROD server is Almost out of disk space $usep%" $NOTIFYMAIL
  fi
done
