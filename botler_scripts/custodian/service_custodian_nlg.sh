#! /bin/bash


source /home/custodian-prod-rasa/custodian-prod-env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/custodian-prod-rasa/www

echo -e "action server is starting now" > /dev/null  2>&1
python nlg_server.py --domain domain.yml >> /home/custodian-prod-rasa/www/logs/rasa_nlg-`/bin/date +\%Y-\%m-\%d-\%Hh-\%Mm-\%Ss`.log

echo "done" > /dev/null  2>&1

