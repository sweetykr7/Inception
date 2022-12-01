FROM debian:buster

#update apt, install mariadb
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install procps mariadb-server -y 
    
#config mariadb
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadb_setting.sh /mariadb_setting.sh

COPY ./conf/wp_dump.sql ./

ENTRYPOINT ["sh", "./mariadb_setting.sh"]

EXPOSE 3306