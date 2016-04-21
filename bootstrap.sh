#!/bin/bash
set -e
sed -i "s/port=\"8009\"/port=\"$AJP_PORT\"/g" /usr/local/tomcat/conf/server.xml
sed -i "s/port=\"8005\"/port=\"$SHUTDOWN_PORT\"/g" /usr/local/tomcat/conf/server.xml
sed -i "s/port=\"8080\"/port=\"$LISTEN_PORT\"/g" /usr/local/tomcat/conf/server.xml

exec "$@"
