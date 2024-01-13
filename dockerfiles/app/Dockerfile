FROM openjdk:11 AS BUILD_IMAGE 
WORKDIR /src/
RUN apt update && apt install maven -y
RUN mvn install


FROM tomcat:9-jre11 
LABEL "Author"="Tanmay" 
WORKDIR /usr/local/tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD_IMAGE target/onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh","run"]