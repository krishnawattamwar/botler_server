#!/bin/bash
NOTIFYEMAIL="itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"

echo -e "Hello Team, \n\nBotler UAT Server is up on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"   | mail -s "Botleruat server is up now" $NOTIFYEMAIL

