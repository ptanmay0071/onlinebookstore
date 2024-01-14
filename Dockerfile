FROM openjdk:11 AS BUILD_IMAGE
WORKDIR /app
RUN apt update && apt install maven -y
COPY ./* .
RUN mvn install

FROM tomcat:9-jre11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=BUILD_IMAGE /app/target/onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
