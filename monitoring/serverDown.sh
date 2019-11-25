#!/bin/sh
SERVERIP_UAT="Botler UAT"
NOTIFYEMAIL="itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"
COUNT_UAT=$(curl http://10.198.8.6 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")
MSG=""

if [ $COUNT_UAT != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP_UAT Server is down on $(date +" %d/%m/%Y at %R")\n"   
else
	echo "SERVERIP_UAT is working"   > /dev/null 2>&1 
fi


if [ "${MSG}" != "" ];
then
		echo "Hello Team, \n\n${MSG} \n\nRegards, \nTeam ITSupport"  | mail -s "Botler Prod server is down" $NOTIFYEMAIL
fi
