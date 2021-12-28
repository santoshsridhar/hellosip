#!binsh

#Scenarios to simulate call flow

SCENARIO_FILE=/home/ec2-user/SIPP/sipp-3.5.1/uas.xml
REMOTE_IP_DOMAIN=phone.plivo.com
REMOTE_PORT=5060
LOCAL_IP=172.31.31.223
LOCAL_PORT=5064
INJECTION_FILE=/home/ec2-user/SIPP/sipp-3.5.1/ports.csv
SIPP_EXE=/home/ec2-user/SIPP/sipp-3.5.1/sipp
SERVICE=nas7942642779952032064307475
MEDIA_IP=172.31.31.223


$SIPP_EXE $REMOTE_IP_DOMAIN -sf $SCENARIO_FILE -i $LOCAL_IP:$LOCAL_PORT -inf $INJECTION_FILE -s $SERVICE -mi $MEDIA_IP -m 1 -trace_screen -trace_msg -trace_err -trace_logs
