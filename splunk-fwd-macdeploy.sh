#!/bin/bash
#Script to start Splunk Universal Forwarder on Mac system
#This will force acceptance of the license agreement, set a deployment server and restart splunkd
#The deployment server can then be used to configure the Universal Forearder further using Deployment Apps


#start Splunk and auto accept license
/Applications/SplunkForwarder/bin/splunk start --accept-license --answer-yes  --auto-ports --no-prompt

#manually write deployment server details to correct directory
echo "[target-broker:deploymentServer]" >> /Applications/SplunkForwarder/etc/system/local/deploymentclient.conf
echo "targetUri = insert_your_deployment_server_here" >> /Applications/SplunkForwarder/etc/system/local/deploymentclient.conf

#restart Splunk
/Applications/SplunkForwarder/bin/splunk restart

#end