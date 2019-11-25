#! /bin/bash


source /home/botleruatrasa/botler_uat_env/bin/activate
echo "------------------------------"
echo -e  "\nenv is activated"
echo "------------------------------"

cd /home/botleruatrasa/www

echo -e "action service is starting now"
rasa run actions --actions actions -p 5057 --debug >> /home/botleruatrasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log

echo "done"

