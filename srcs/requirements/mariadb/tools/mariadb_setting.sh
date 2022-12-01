#!/bin/sh

chown -R 777 /var/lib/mysql/
chown -R mysql:mysql /var/lib/mysql/

service mysql start;

if [ ! -d "/var/lib/mysql/$MYSQL_DATABASE" ];then
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE";
mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'";
mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'";
mysql -e "UPDATE mysql.user SET Password = PASSWORD('${MYSQL_ROOT_PASSWORD}') WHERE User = 'root'; FLUSH PRIVILEGES;"
mysql -e "ALTER USER '$MYSQL_ROOT'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;"
mysql $MYSQL_DATABASE -u$MYSQL_ROOT -p$MYSQL_ROOT_PASSWORD < ./wp_dump.sql
fi

sleep 2;
mysqladmin -u$MYSQL_ROOT -p$MYSQL_ROOT_PASSWORD shutdown;

echo "mysql begin!"

exec mysqld