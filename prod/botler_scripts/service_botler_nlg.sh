#! /bin/bash


source /home/botleruatrasa/botler_uat_env/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/botleruatrasa/www

echo -e "nlg service is starting now"
python nlg_server.py --domain domain.yml >> /home/botleruatrasa/www/logs/rasa_nlg-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"


