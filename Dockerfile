FROM tomcat:9.0.64-jdk8-corretto
MAINTAINER sudheera897@gmail.com
COPY SWE645_HW1.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
