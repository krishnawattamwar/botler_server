#! /bin/bash

source /home/pepkor_new_rasa/pepkor_new_rasa_env/bin/activate
echo "------------------------------"  > /dev/null  2>&1
echo -e  "\nenv is activated"			> /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/pepkor_new_rasa/www

echo "------------------------------" > /dev/null  2>&1
echo -e "\ncore server is starting now" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 6001 --enable-api --debug --log-file /home/pepkor_new_rasa/www/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"   > /dev/null  2>&1


rasa run -m models --endpoints endpoints.yml -p 6001 --enable-api --credentials credentials.yml --debug

