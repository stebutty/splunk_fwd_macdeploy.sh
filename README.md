# splunk_fwd_macdeploy.sh
This is a simple script to configure a MacOS system as a Splunk deployment client 

Configuring MacOS Splunk Universal Forwarders can be tricky on MacOS systems, this script should help.  In order to correctly manage Macs with Splunk you must configure them as deployment clients.

First, install the universal forwarder on your Mac's, either manually or using a deployment solution
Then exucute this script, making sure you amend the line which includes the URL of your Splunk deployment server
If you created a Splunk admin user on your universal forwarder you will need to enter this at the prompt
If everything went well you should see the Mac client appear in your Splunk deployment server
