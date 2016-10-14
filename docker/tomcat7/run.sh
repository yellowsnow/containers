#!/bin/bash
which java
echo "JAVA_HOME : $JAVA_HOME"
java -version
/etc/init.d/tomcat7 start

# The container will run as long as the script is running, that's why
# we need something long-lived here
exec tail -f /var/log/tomcat7/catalina.out
