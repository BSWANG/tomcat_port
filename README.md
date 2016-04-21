# tomcat docker image with customize port

### Usage:  
docker run -it -e LISTEN_PORT=80 -e AJP_PORT=8009 -e SHUTDOWN_PORT=8005 <image id> 
