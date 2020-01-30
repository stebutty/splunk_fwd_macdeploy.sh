#!/bin/bash
#Script to start Splunk Universal Forwarder on Mac system
#This will force acceptance of the license agreement, set a deployment server and restart splunkd
#The deployment server can then be used to configure the Universal Forearder further using Deployment Apps

#start Splunk and auto accept license
/Applications/SplunkForwarder/bin/splunk start --accept-license --answer-yes  --auto-ports --no-prompt

#set Splunk to start using the splunk user at boot time
/Applications/SplunkForwarder/bin/splunk enable boot-start -user splunk

# Take ownership of Splunk directory and everything under it
sudo chown -R splunk /Applications/SplunkForwarder

#manually write deployment server details to correct directory
echo "[target-broker:deploymentServer]" >> /Applications/SplunkForwarder/etc/system/local/deploymentclient.conf
echo "targetUri = 51.105.19.66:8089" >> /Applications/SplunkForwarder/etc/system/local/deploymentclient.conf

#restart Splunk
sudo -u splunk /Applications/SplunkForwarder/bin/splunk restart

#end
