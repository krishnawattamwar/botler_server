#! /bin/bash


source /home/pepkor_prod_rasa/pepkor_prod_rasa_env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/pepkor_prod_rasa/www

echo -e "action server is starting now" > /dev/null  2>&1
rasa run actions --actions actions -p 5061 --debug >> /home/pepkor_prod_rasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%Hh-\%Mm-\%Ss`.log

echo "done" > /dev/null  2>&1

