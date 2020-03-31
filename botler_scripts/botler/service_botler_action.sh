#! /bin/bash


source /home/botlerprodrasa/botler_prod/bin/activate
#echo "------------------------------" 
#echo -e  "\nenv is activated"
#echo "------------------------------"

cd /home/botlerprodrasa/www

#echo -e "action server is starting now"
rasa run actions --actions actions -p 5057 >> /home/botlerprodrasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%Hh-\%Mm-\%Ss`.log'
#echo "done"

