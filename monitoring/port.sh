NOTIFYEMAIL="itsupport@graymatrix.com"
SERVER="localhost"
#PORT1="5005" # BMS RASA-CORE
#PORT2="5055" # BMS RASA-ACTION
#PORT3="5056" # BMS RASA-NLG
PORT4="5002" # BOTLER RASA-CORE
PORT5="5057" # BOTLER RASA-ACTION
PORT6="5058" # BOTLER RASA-NLG
PORT7="5003" # CUSTODIAN RASA-CORE
PORT8="5059" # CUSTODIAN RASA-ACTION
PORT9="5060" # CUSTODIAN RASA-NLG
#state1=`nmap -p $PORT1 $SERVER | grep "$PORT1" | grep open`
#state2=`nmap -p $PORT2 $SERVER | grep "$PORT2" | grep open`
#state3=`nmap -p $PORT3 $SERVER | grep "$PORT3" | grep open`
state4=`nmap -p $PORT4 $SERVER | grep "$PORT4" | grep open`
state5=`nmap -p $PORT5 $SERVER | grep "$PORT5" | grep open`
state6=`nmap -p $PORT6 $SERVER | grep "$PORT6" | grep open`
state7=`nmap -p $PORT7 $SERVER | grep "$PORT7" | grep open`
state8=`nmap -p $PORT8 $SERVER | grep "$PORT8" | grep open`
state9=`nmap -p $PORT9 $SERVER | grep "$PORT9" | grep open`

MSG=""

#if [ -z "$state1" ]; then
#  MSG="${MSG}CORE service of BMS RASA is down which is running $PORT1 port.\n"  
#else
#  echo "Connection to $SERVER on port $PORT1 was successful"   > /dev/null 2>&1 
#fi

#if [ -z "$state2" ]; then
#  MSG="${MSG}Action service of BMS RASA is down which is running $PORT2 port.\n"  
#else
#  echo "Connection to $SERVER on port $PORT2 was successful"   > /dev/null 2>&1 
#fi

#if [ -z "$state3" ]; then
#  MSG="${MSG}NLG service of BMS RASA is down which is running $PORT3 port.\n"  
#else
#  echo "Connection to $SERVER on port $PORT3 was successful"   > /dev/null 2>&1 
#fi

if [ -z "$state4" ]; then
  MSG="${MSG}Core service of Botler RASA is down which is running $PORT4 port.\n"  
else
  echo "Connection to $SERVER on port $PORT4 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state5" ]; then
  MSG="${MSG}Action service of Botler RASA is down which is running $PORT5 port.\n"  
else
  echo "Connection to $SERVER on port $PORT5 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state6" ]; then
  MSG="${MSG}NLG service of Botler RASA is down which is running $PORT6 port.\n"  
else
  echo "Connection to $SERVER on port $PORT6 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state7" ]; then
  MSG="${MSG}Core service of CUSTODIAN RASA is down which is running $PORT7 port.\n"  
else
  echo "Connection to $SERVER on port $PORT7 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state8" ]; then
  MSG="${MSG}Action service of CUSTODIAN RASA is down which is running $PORT8 port.\n"  
else
  echo "Connection to $SERVER on port $PORT8 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state9" ]; then
  MSG="${MSG}NLG service of CUSTODIAN RASA is down which is running $PORT9 port.\n"  
else
  echo "Connection to $SERVER on port $PORT9 was successful"   > /dev/null 2>&1 
fi

if [ "${MSG}" != "" ];
then
		echo -e "Hello Team, \n\n${MSG} at $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"   | mail -s "RASA Service of Botler UAT server is down" $NOTIFYEMAIL
fi
