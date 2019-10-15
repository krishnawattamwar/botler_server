#! /bin/bash
  
NOTIFYEMAIL="itsupport@graymatrix.com"

count1=$(sudo lsof -i -P -n | grep 5005 | awk '{if(NR==1) print $9}' | cut -c 3-6)
count2=$(sudo lsof -i -P -n | grep 5055 | awk '{if(NR==1) print $9}' | cut -c 3-6)


#for rasa core on port 5005
if [ $count1 != 5005 ]
then
bash /home/node/service.sh
echo -e "Hello Team, \n\nRASA-Core service it was down on $(date +" %d/%m/%Y at %R") but it's running now after running server.sh script. \n\n\nRegards, \nTeam ITSupport" | mail -s "RASA-Core service is Came up" $NOTIFYEMAIL
	elif [ $count1 != 5005 ]
	then
	echo -e "Hello Team, \n\nRASA-Core service is down on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport" | mail -s "RASA-Core service is down" $NOTIFYEMAIL
	else
		    echo -e "\nRASA-Core service is working" # > /dev/null  2>&1
fi


#for rasa action on port 5055
if [ $count2 != 5055 ]
then
bash /home/node/service1.sh
echo -e "Hello Team, \n\nRASA-Action service it was down on $(date +" %d/%m/%Y at %R") but it's running now after running server1.sh script. \n\n\nRegards, \nTeam ITSupport" | mail -s "RASA-Action service is Came up" $NOTIFYEMAIL
	elif [ $count2 != 5055 ]
	then
	echo -e "Hello Team, \n\nRASA-Action service is down on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport" | mail -s "RASA-Action service is down" $NOTIFYEMAIL
	else
		    echo -e "\nRASA-Action service is working" # > /dev/null  2>&1
fi

