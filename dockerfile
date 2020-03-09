# La imagen queremos que cargue.
FROM debian:buster

# Autor del dockerfile.
#MAINTAINER Carlos Castillo <ccastill>

# Versión de mi Dockerfile.
#LABEL Version = "1.0"

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

#------Comandos-----
#------Listar imágenes y contenedores-------
# docker images lista todas las imagenes descargadas.
# docker ps te permite ver los contenedores que se están ejecutando.
# docker ps -a Te muestra todos los contenedores que tengas.

# docker run [Imagen] Te permite ejecutar por primera vez una imagen. Podemos darle un nombre o el docker le dará uno random. 
# docker start [Nombre del contenedor] Arranca el contenedor indicado.
# docker stop [Nombre del contenedor] detiene el contenedor indicado.
# docker build -t [nombre que queramos dar a la imagen] [Ruta] Construye la imagen.
# La -t nos permite añadir un nombre a la imagen que vamos a crear. 


# -p indica los puertos 
# -it Sirve para que se ejecute en el shell, mostrandose los procesos y teniendo acceso al servidor.


# docker rm [Nombre o ID] Borra el contenedor indicado.
# docker image rm [Nombre] borra la imagen indicada.
# Añadiendo el flag --name [Nombre del contenedor] le damos nombre al contenedor. 
# docker attach te permite entrar en un contenedor que se encuentra ejecutandose.

# El siguiente ejemplo es una cadena de comando para ejecutar una imagen de Nginx en un contenedor
# docker run -p 80:80 -p 443:443 -d [nombre la imagen]
# -p 80:80 y -p 443:443 = Exponer los puertos que vamos a utilziar, de entrada (Local-machine) y salida (Internal container)
# -d = Arrancar el servidor en el background. 
# La parte de la izquierda de los : es la localización en nuestro ordenador.
# La parte de la derecha de los : es la localización de nuestro contenedor.