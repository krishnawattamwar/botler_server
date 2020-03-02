#! /bin/bash


source /home/cashconnect_prod_rasa/cashconnect_prod_env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/cashconnect_prod_rasa

echo -e "action server is starting now" > /dev/null  2>&1
rasa run actions --actions actions -p 5063 --debug >> /home/cashconnect_prod_rasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done" > /dev/null  2>&1

