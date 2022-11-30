FROM debian:buster

#update apt, install mariadb
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install procps mariadb-server -y 
# RUN apt-get install mariadb-client -y

# rm /etc/mysql/mariadb.conf.d/50-server.cnf && \
    
#config mariadb
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadb_setting.sh /mariadb_setting.sh

# RUN chmod +x /mariadb_setting.sh

# COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/wp_dump.sql ./



# ENTRYPOINT ["sh", "-c", "./mariadb_setting.sh"]
ENTRYPOINT ["sh", "./mariadb_setting.sh"]

EXPOSE 3306