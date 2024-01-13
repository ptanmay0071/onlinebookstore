FROM mysql:8.0.33
LABEL "Author"="Tanmay"

ENV MYSQL_ROOT_PASSWORD="Tanmay"
ENV MYSQL_DATABASE="accounts"

ADD CreateDatastore.sql docker-entrypoint-initdb.d/db_backup.sql