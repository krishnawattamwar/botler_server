#! /bin/bash

source /home/pepkor_prod_rasa/pepkor_prod_rasa_env/bin/activate
echo "------------------------------"  > /dev/null  2>&1
echo -e  "\nenv is activated"			> /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/pepkor_prod_rasa/www

echo "------------------------------" > /dev/null  2>&1
echo -e "\ncore server is starting now" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 5006 --enable-api --debug --log-file /home/pepkor_prod_rasa/www/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"   > /dev/null  2>&1

