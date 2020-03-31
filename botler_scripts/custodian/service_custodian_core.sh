#! /bin/bash

source /home/custodian-prod-rasa/custodian-prod-env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/custodian-prod-rasa/www

echo "------------------------------" > /dev/null  2>&1
echo -e "\ncore server is starting now" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 5003 --enable-api --debug --log-file /home/custodian-prod-rasa/www/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%Hh-\%Mm-\%Ss`.log

echo "done" > /dev/null  2>&1

