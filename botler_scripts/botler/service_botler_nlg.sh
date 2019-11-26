#! /bin/bash


source /home/botlerprodrasa/botler_prod/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/botlerprodrasa/www

echo -e "action server is starting now"
python nlg_server.py --domain domain.yml >> /home/botlerprodrasa/www/logs/rasa_nlg-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"

