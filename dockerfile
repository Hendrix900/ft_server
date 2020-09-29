# La imagen que queremos que cargue.
FROM debian:buster

# Autor del dockerfile.
MAINTAINER Carlos Castillo <ccastill>

# Versión de mi Dockerfile.
LABEL Version = "1.0"

# Variable para modificar el autoindex a través de un script.
ENV AUTOINDEX="on"

# Actualizamos e instalamos los componentes.
# apt update refresca los repositorios de software.
# apt upgrade actualiza el sistema completamente.
# apt install llevará a cabo la instalación.
RUN apt-get -y update && apt-get -y upgrade && \
	apt-get install -y nginx \
	php-mbstring php-fpm php-mysql \
	mariadb-server \
 wget openssl \
 && wget https://es.wordpress.org/wordpress-latest-es_ES.tar.gz \
 && tar -xzvf wordpress-latest-es_ES.tar.gz \
 && mv wordpress /var/www/html \
 && rm -rf wordpress-latest-es_ES.tar.gz \
 && wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz \
 && tar -xzvf phpMyAdmin-5.0.2-all-languages.tar.gz \
 && mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin \
 && rm -rf phpMyAdmin-5.0.2-all-languages.tar.gz 

# Copiamos los archivos de nuestro directorio local al servidor.
COPY /srcs/change_autoindex.sh /
COPY /srcs/default_aut_off /tmp
COPY /srcs/nginx /tmp
COPY /srcs/nginx /etc/nginx/sites-available/
COPY /srcs/init.sql /tmp/
COPY /srcs/wp-config.php /var/www/html/wordpress
COPY /srcs/wordpress.sql /tmp/
COPY /srcs/header.jpg   /var/www/html/wordpress/wp-content/themes/twentyseventeen/assets/images/
COPY /srcs/config.inc.php /var/www/html/phpmyadmin
COPY /srcs/self-signed.conf /etc/nginx/snippets/
COPY /srcs/ssl-params.conf /etc/nginx/snippets/
COPY /srcs/index.html /var/www/html/

# Con chown cambiamos el propietario:grupo de manera recursiva (-R) en todas las carpetas y subcarpetas de un directorio.
# Con chmod cambiamos los permisos para el usuario/grupo/otros. Indicandolo en octal 755.
RUN	rm -rf /etc/nginx/sites-available/default && \
	rm -f /var/www/html/index.nginx-debian.html && \
	rm -rf /etc/nginx/sites-enabled/default && \
	ln -sf /etc/nginx/sites-available/nginx /etc/nginx/sites-enabled/ && \
	chown -R www-data:www-data /var/www/* && \
	chmod -R 755 /var/www/*

# Iniciamos MySql y creamos una base de datos y usuario init.sql
# Realizamos la misma operación para wordpress
RUN service mysql start && \
	mysql -u root --password= < /tmp/init.sql && \
	mysql wordpress -u root --password= < /tmp/wordpress.sql


#SSl
RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=SP/ST=Spain/L=Madrid/O=42Madrid/CN=localhost" \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt && \
	openssl dhparam -out /etc/nginx/dhparam.pem 1024

#Ejecutables del contenedor
CMD service nginx start && \
	service php7.3-fpm start && \
	service mysql start && \
	bash

EXPOSE 80 443
