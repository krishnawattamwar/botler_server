#!/bin/bash
NOTIFYEMAIL="itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"

echo -e "Hello Team, \n\nBotler Prod Server is up on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"   | mail -s "Botler Prod server is up now" $NOTIFYEMAIL

