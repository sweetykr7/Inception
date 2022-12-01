FROM		debian:buster

RUN 		apt-get update -y
RUN			apt-get install -y nginx
RUN			apt-get install -y openssl


COPY		./tools/setup_nginx.sh /tmp/
COPY		./conf/default /etc/nginx/sites-available/default

RUN			openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
			-subj "/C=KR/ST=Seoul/O=42Seoul/OU=Inception/CN=KIM" \
			-keyout /etc/ssl/private/server.key \
			-out /etc/ssl/certs/server.crt

EXPOSE		443

ENTRYPOINT [ "sh", "/tmp/setup_nginx.sh" ]
