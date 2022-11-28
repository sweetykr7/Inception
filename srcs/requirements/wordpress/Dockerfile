FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y php7.3-fpm
RUN apt-get install -y php-mysql
RUN apt-get install -y tar
RUN apt-get install -y wget

RUN wget https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz

COPY ./tools/wordpress_setting.sh /tmp/
COPY ./conf/wp-config.php /tmp/

CMD sh /tmp/wordpress_setting.sh

EXPOSE 9000