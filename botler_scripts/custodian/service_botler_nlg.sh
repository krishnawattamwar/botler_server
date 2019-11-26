#! /bin/bash


source /home/custodian-prod-rasa/custodian-prod-env/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/custodian-prod-rasa/www

echo -e "action server is starting now"
python nlg_server.py --domain domain.yml >> /home/custodian-prod-rasa/www/logs/rasa_nlg-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"

