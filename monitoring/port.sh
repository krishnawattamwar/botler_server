#! /bin/bash
NOTIFYEMAIL="itsupport@graymatrix.com,suraj.padhy@graymatrix.com"
SERVER="localhost" > /dev/null 2>&1

#PORT1="5005" # BMS RASA-CORE
#PORT2="5055" # BMS RASA-ACTION
#PORT3="5056" # BMS RASA-NLG
PORT4="5002" # BOTLER RASA-CORE
PORT5="5057" # BOTLER RASA-ACTION
PORT6="5058" # BOTLER RASA-NLG

PORT7="5003" # CUSTODIAN RASA-CORE
PORT8="5059" # CUSTODIAN RASA-ACTION
PORT9="5060" # CUSTODIAN RASA-NLG

PORT10="5007" # CASHCONNECT RASA-CORE
PORT11="5063" # CASHCONNECT RASA-ACTION
PORT12="5064" # CASHCONNECT RASA-NLG

PORT13="5006" # PEP RASA-CORE
PORT14="5061" # PEP RASA-ACTION
PORT15="5062" # PEP RASA-NLG

PORT16="6001" # PEPKOR RASA-CORE
PORT17="5071" # PEPKOR RASA-ACTION
PORT18="5072" # PEPKOR RASA-NLG


#state1=`nmap -p $PORT1 $SERVER | grep "$PORT1" | grep open`
#state2=`nmap -p $PORT2 $SERVER | grep "$PORT2" | grep open`
#state3=`nmap -p $PORT3 $SERVER | grep "$PORT3" | grep open`
state4=`nmap -p $PORT4 $SERVER | grep "$PORT4" | grep open`
state5=`nmap -p $PORT5 $SERVER | grep "$PORT5" | grep open`
state6=`nmap -p $PORT6 $SERVER | grep "$PORT6" | grep open`
state7=`nmap -p $PORT7 $SERVER | grep "$PORT7" | grep open`
state8=`nmap -p $PORT8 $SERVER | grep "$PORT8" | grep open`
state9=`nmap -p $PORT9 $SERVER | grep "$PORT9" | grep open`
state10=`nmap -p $PORT10 $SERVER | grep "$PORT10" | grep open`
state11=`nmap -p $PORT11 $SERVER | grep "$PORT11" | grep open`
state12=`nmap -p $PORT12 $SERVER | grep "$PORT12" | grep open`
state13=`nmap -p $PORT13 $SERVER | grep "$PORT13" | grep open`
state14=`nmap -p $PORT14 $SERVER | grep "$PORT14" | grep open`
state15=`nmap -p $PORT15 $SERVER | grep "$PORT15" | grep open`
state16=`nmap -p $PORT16 $SERVER | grep "$PORT16" | grep open`
state17=`nmap -p $PORT17 $SERVER | grep "$PORT17" | grep open`
state18=`nmap -p $PORT18 $SERVER | grep "$PORT18" | grep open`



MSG=""

#if [ -z "$state1" ]; then
#  MSG="${MSG}CORE service of BMS RASA is down which is running on $PORT1 port.\n"  
#else
#  echo "Connection to $SERVER on port $PORT1 was successful"   > /dev/null 2>&1 
#fi

#if [ -z "$state2" ]; then
#  MSG="${MSG}Action service of BMS RASA is down which is running on $PORT2 port.\n"  
#else
#  echo "Connection to $SERVER on port $PORT2 was successful"   > /dev/null 2>&1 
#fi

#if [ -z "$state3" ]; then
#  MSG="${MSG}NLG service of BMS RASA is down which is running on $PORT3 port.\n"  
#else
#  echo "Connection to $SERVER on port $PORT3 was successful"   > /dev/null 2>&1 
#fi

if [ -z "$state4" ]; then
  MSG="${MSG}Core service of Botler RASA is down which is running on $PORT4 port.\n"  
else
  echo "Connection to $SERVER on port $PORT4 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state5" ]; then
  MSG="${MSG}Action service of Botler RASA is down which is running on $PORT5 port.\n"  
else
  echo "Connection to $SERVER on port $PORT5 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state6" ]; then
  MSG="${MSG}NLG service of Botler RASA is down which is running on $PORT6 port.\n"  
else
  echo "Connection to $SERVER on port $PORT6 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state7" ]; then
  MSG="${MSG}Core service of CUSTODIAN RASA is down which is running on $PORT7 port.\n"  
else
  echo "Connection to $SERVER on port $PORT7 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state8" ]; then
  MSG="${MSG}Action service of CUSTODIAN RASA is down which is running on $PORT8 port.\n"  
else
  echo "Connection to $SERVER on port $PORT8 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state9" ]; then
  MSG="${MSG}NLG service of CUSTODIAN RASA is down which is running on $PORT9 port.\n"  
else
  echo "Connection to $SERVER on port $PORT9 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state10" ]; then
  MSG="${MSG}Core service of CASHCONNECT RASA is down which is running on $PORT10 port.\n"  
else
  echo "Connection to $SERVER on port $PORT10 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state11" ]; then
  MSG="${MSG}Action service of CASHCONNECT RASA is down which is running on $PORT11 port.\n"  
else
  echo "Connection to $SERVER on port $PORT11 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state12" ]; then
  MSG="${MSG}NLG service of CASHCONNECT RASA is down which is running on $PORT12 port.\n"  
else
  echo "Connection to $SERVER on port $PORT12 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state13" ]; then
  MSG="${MSG}Core service of PEP RASA is down which is running on $PORT13 port.\n"  
else
  echo "Connection to $SERVER on port $PORT13 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state14" ]; then
  MSG="${MSG}Action service of PEP RASA is down which is running on $PORT14 port.\n"  
else
  echo "Connection to $SERVER on port $PORT14 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state15" ]; then
  MSG="${MSG}NLG service of PEP RASA is down which is running on $PORT15 port.\n"  
else
  echo "Connection to $SERVER on port $PORT15 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state16" ]; then
  MSG="${MSG}Core service of PEPKOR RASA is down which is running on $PORT16 port.\n"  
else
  echo "Connection to $SERVER on port $PORT16 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state17" ]; then
  MSG="${MSG}Action service of PEPKOR RASA is down which is running on $PORT17 port.\n"  
else
  echo "Connection to $SERVER on port $PORT17 was successful"   > /dev/null 2>&1 
fi

if [ -z "$state18" ]; then
  MSG="${MSG}NLG service of PEPKOR RASA is down which is running on $PORT18 port.\n"  
else
  echo "Connection to $SERVER on port $PORT18 was successful"   > /dev/null 2>&1 
fi

if [ "${MSG}" != "" ];
then
echo -e "Hello Team, \n\n${MSG}at $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"  | mail -s "RASA Service of Botler Producation server is down" $NOTIFYEMAIL
fi
