#!/bin/sh

#Scenarios to simulate call flow

SCENARIO_FILE=/home/ec2-user/SIPP/sipp-3.5.1/REGISTER.xml
REMOTE_IP_DOMAIN=phone.plivo.com
REMOTE_PORT=5060
LOCAL_IP=172.31.31.223
LOCAL_PORT=5068
INJECTION_FILE=/home/ec2-user/SIPP/sipp-3.5.1/registerCallee.csv
SIPP_EXE=/home/ec2-user/SIPP/sipp-3.5.1/sipp


./$SIPP_EXE $REMOTE_IP_DOMAIN -sf $SCENARIO_FILE -i $LOCAL_IP:$LOCAL_PORT -inf $INJECTION_FILE -m 1 -trace_screen -trace_msg -trace_err -trace_logs
