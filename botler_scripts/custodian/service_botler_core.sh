#! /bin/bash

source /home/custodian-prod-rasa/custodian-prod-env/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/custodian-prod-rasa/www

echo "------------------------------"
echo -e "\ncore server is starting now"
echo "------------------------------"

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 5003 --enable-api --debug --log-file /home/custodian-prod-rasa/www/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"

