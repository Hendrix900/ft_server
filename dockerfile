# La imagen que queremos que cargue.
FROM debian:buster

# Autor del dockerfile.
MAINTAINER Carlos Castillo <ccastill>

# Versión de mi Dockerfile.
LABEL Version = "1.0"

# Actualizamos e instalamos los componentes.
# apt update refresca los repositorios de software.
# apt upgrade actualiza el sistema completamente.
RUN apt update && \
	apt -y upgrade && \
	apt install -y nginx \
	php-mbstring php-fpm php-mysql \
	mariadb-server \
	openssl
		
# Copiamos los archivos de nuestro directorio local al servidor.
COPY /srcs/wordpress /var/www/html/wordpress/
COPY /srcs/phpMyAdmin /var/www/html/phpmyadmin/
COPY /srcs/default /etc/nginx/sites-available/
COPY /srcs/init.sql /tmp/
COPY /srcs/wordpress.sql /tmp/
COPY /srcs/self-signed.conf /etc/nginx/snippets/
COPY /srcs/ssl-params.conf /etc/nginx/snippets/
COPY /srcs/index.html /var/www/html/

# Con chown cambiamos el propietario:grupo de manera recursiva (-R) en todas las carpetas y subcarpetas de un directorio.
# Con chmod cambiamos los permisos para el usuario/grupo/otros. Indicandolo en octal 755.
RUN	chown -R www-data:www-data /var/www/* && \
	chmod -R 755 /var/www/*

# Iniciamos MySql y asignamos el usuario como 'root' y el password que pasamos en init.sql
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

# docker rm [Nombre o ID] Borra el contenedor indicado.
# docker image rm [Nombre] borra la imagen indicada.
# Añadiendo el flag --name [Nombre del contenedor] le damos nombre al contenedor. 
# docker attach te permite entrar en un contenedor que se encuentra ejecutandose.
