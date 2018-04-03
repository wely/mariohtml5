#!/bin/bash

# Start SSH SERVER
/usr/sbin/sshd  
status=$?
if [ $status -ne 0 ]; then
	echo "Failed to start ssh server: $status"
	exit $status
fi


# Start Tomcat 
catalina.sh run
status=$?
if [ $status -ne 0 ]; then
	echo "Failed to start tomcat: $status"
	exit $status
fi

while /bin/true; do
	sleep 60
#Do process monitor here ...
done




