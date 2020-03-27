#! /bin/bash


source /home/pepkor_new_rasa/pepkor_new_rasa_env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/pepkor_new_rasa/www

echo -e "action server is starting now" > /dev/null  2>&1
rasa run actions --actions actions -p 5071 --debug >> /home/pepkor_new_rasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done" > /dev/null  2>&1

