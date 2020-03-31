#! /bin/bash

source /home/botlerprodrasa/botler_prod/bin/activate
#echo "------------------------------"
#echo -e  "\nenv is activated"
#echo "------------------------------"

cd /home/botlerprodrasa/www

#echo "------------------------------"
#echo -e "\ncore server is starting now"
#echo "------------------------------"

rasa run --endpoints endpoints.yml --credentials credentials.yml -p 5002 --enable-api --debug --log-file /home/botlerprodrasa/www/logs/rasa_core-`/bin/date +\%Y-\%m-\%d-\%Hh-\%Mm-\%Ss`.log'

#echo "done"

