#! /bin/bash


source /home/helpify.rasa/helpify.rasa.env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/helpify.rasa/www/

echo -e "action server is starting now" > /dev/null  2>&1
rasa run actions --actions actions --debug >> /home/helpify.rasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log
echo "done" > /dev/null  2>&1

