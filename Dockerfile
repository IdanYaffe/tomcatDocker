<<<<<<< HEAD
FROM tomcat:9.0.1-jre8-alpine

ADD ./webapp /usr/local/tomcat/webapps/webapp

EXPOSE 8080

CMD ["catalina.sh", "run"]
=======
FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget nano jq
RUN mkdir /usr/local/tomcat
RUN wget http://apache.mivzakim.net/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.28/* /usr/local/tomcat/
EXPOSE 8080
EXPOSE 8090
CMD /usr/local/tomcat/bin/catalina.sh run
>>>>>>> f51309c1103f5c573a0047bdefd8da9d177fded6
