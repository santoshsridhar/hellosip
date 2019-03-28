#!/bin/bash

#####################################################################################
# This script registers 2 pre-created SIP endpoints and does a 1-1 Call between them
# Assumptions: SIP endpoints are already created on server
#####################################################################################


echo "Register the Callee"

./REGISTER-CALLEE.sh

sleep 5

echo "Register the Caller"

./REGISTER-CALLER.sh

sleep 5

echo "Callee registration is Successful proceed to prepare callee listen to incominng connection"

./CALLEE

sleep 5

echo "Now caller joins in and starts and terminates 1-1 call"

./CALLER

echo " call was successful"


#=============END==================

