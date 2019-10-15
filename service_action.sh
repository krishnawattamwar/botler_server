#! /bin/bash


source /home/botlerprodrasa/botler_prod/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/botlerprodrasa

echo -e "action server is starting now" > /dev/null  2>&1
rasa run actions --actions actions -p 5057 --debug >> /home/node/fix_botler/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done" > /dev/null  2>&1

