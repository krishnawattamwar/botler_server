#! /bin/bash
#port 5055

source /home/helpify.rasa/helpify.rasa.env/bin/activate
echo "------------------------------" > /dev/null  2>&1
echo -e  "\nenv is activated" > /dev/null  2>&1
echo "------------------------------" > /dev/null  2>&1

cd /home/helpify.rasa/www/

echo -e "core server is starting now" > /dev/null  2>&1
rasa run --endpoints endpoints.yml --credentials credentials.yml --enable-api --debug -p 5005 --log /home/helpify.rasa/www/logs/rasa_action-`/bin/date +\%Y-\%m-\%d-\%H-\%M-\%H-\%M-\%S`.log
echo "done" > /dev/null  2>&1

