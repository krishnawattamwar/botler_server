#! /bin/bash

source /home/botleruatrasa/botler_uat_env/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/botleruatrasa/www

echo "------------------------------"
echo -e "\ncore service is starting now"
echo "------------------------------"

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 5002 --enable-api --debug --log-file /home/botleruatrasa/www/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"

