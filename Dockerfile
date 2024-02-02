FROM tomcat:9-jre11

WORKDIR  /usr/local/tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

COPY /target/onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
