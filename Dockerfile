FROM ubuntu:latest 
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get -y install apache2 
RUN sed -i "s/80/8085/g" /etc/apache2/ports.conf 
EXPOSE 8085 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND", "-k", "start"]
