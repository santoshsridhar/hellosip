#!/bin/bash

#####################################################################################
# This script registers 2 pre-created SIP endpoints and does a 1-1 Call between them
# Assumptions: SIP endpoints are already created on server
#####################################################################################


echo "Register the Callee"

./REGISTER-CALLEE.sh

sleep 10

echo "Register the Caller"

./REGISTER-CALLER.sh

sleep 10

echo "Callee registration is Successful proceed to prepare callee listen to incominng connection"

./CALLEE

sleep 10

echo "Caller registration is Successful; Proceed to 1-1 call"

./CALLER

echo " call was successful"


#=============END==================













 
 