#!bin/bash

# chown -R www-data:www-data /var/www/wordpress/

if [ ! -d "/var/build_complete/" ];then
rm -rf latest.tar.gz
mkdir -p /var/www
mv -f /wordpress/ /var/www
cp -rf ./tmp/wp-config.php /var/www/wordpress/
chown -R www-data:www-data /var/www/wordpress/

echo "env[MYSQL_DATABASE] = \$MYSQL_DATABASE" >> /etc/php/7.3/fpm/pool.d/www.conf
echo "env[MYSQL_USER] = \$MYSQL_USER" >> /etc/php/7.3/fpm/pool.d/www.conf
echo "env[MYSQL_PASSWORD] = \$MYSQL_PASSWORD" >> /etc/php/7.3/fpm/pool.d/www.conf
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php/
mkdir -p /var/build_complete/
fi

sleep 1
echo "wordpress begin!"

exec php-fpm7.3 -F