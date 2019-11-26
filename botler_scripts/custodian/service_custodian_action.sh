#! /bin/bash


source /home/custodian-prod-rasa/custodian-prod-env/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/custodian-prod-rasa/www

echo -e "action server is starting now"
rasa run actions --actions actions -p 5059 >> /home/custodian-prod-rasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log
echo "done"

