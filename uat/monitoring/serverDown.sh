#!/bin/sh
SERVERIP_PROD="Botler Prod"
NOTIFYEMAIL="itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"
COUNT_PROD=$(curl http://10.198.0.4:5000 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")
MSG=""

if [ $COUNT_PROD != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP_PROD Server is down on $(date +" %d/%m/%Y at %R")\n"   
else
	echo "SERVERIP_PROD is working"   > /dev/null 2>&1 
fi


if [ "${MSG}" != "" ];
then
		echo "Hello Team, \n\n${MSG} \n\n\nRegards, \nTeam ITSupport"  | mail -s "Botler Prod server is down" $NOTIFYEMAIL
fi
