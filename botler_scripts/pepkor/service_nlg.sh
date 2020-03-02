#! /bin/bash


source /home/pepkor_prod_rasa/pepkor_prod_rasa_env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/botlerprodrasa

echo -e "action server is starting now"
python nlg_server.py --domain domain.yml >> /home/pepkor_prod_rasa/www/logs/rasa_nlg-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done" > /dev/null  2>&1
 