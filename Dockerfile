FROM tomcat:7
MAINTAINER wbs9399@sina.com
ADD ./bootstrap.sh /usr/local/tomcat/bin/ 
RUN chmod +x /usr/local/tomcat/bin/bootstrap.sh

ENV AJP_PORT 8009
ENV SHUTDOWN_PORT 8005
ENV LISTEN_PORT 8080

ENTRYPOINT [ "/usr/local/tomcat/bin/bootstrap.sh" ]  
CMD [ "/usr/local/tomcat/bin/catalina.sh", "run"]
