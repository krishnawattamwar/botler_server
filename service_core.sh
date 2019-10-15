#! /bin/bash

source /home/botlerprodrasa/botler_prod/bin/activate
echo "------------------------------"  > /dev/null  2>&1
echo -e  "\nenv is activated"			> /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/botlerprodrasa/
#echo "------------------------------"
#echo -e "\ntrain process is running"
#echo "------------------------------"

#rasa train

#echo -e "action server is starting now"
#rasa run actions --actions actions --debug >> /home/node/fix_botler/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "------------------------------" > /dev/null  2>&1
echo -e "\ncore server is starting now" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 5002 --enable-api --debug --log-file /home/node/fix_botler/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"   > /dev/null  2>&1

