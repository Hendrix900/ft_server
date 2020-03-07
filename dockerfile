# La imagen queremos que cargue.
FROM debian:buster

# Autor del dockerfile.
MAINTAINER Carlos Castillo <ccastill>

# Versión de mi Dockerfile.
LABEL Version = "1.0"

# Introducimos todos los cambios que queremos se ejecuten.
# apt update refresca los repositorios de software.
# apt upgrade actualiza el sistema completamente.

RUN apt update && apt upgrade && \ 
    apt install -y nginx mariadb-server php-fpm php-mysql php-mbstring openssl wget

COPY /srcs/wordpress /var/www/html/wordpress/
COPY /srcs/phpMyAdmin /var/www/html/phpMyAdmin/


EXPOSE 8080

#------Comandos----
# docker images te lista todas las imagenes descargadas.
# docker ps Te permite ver los contenedores que se están ejecutando.
# docker ps -a Te muestra todos los contenedores que tengas.
# docker run [Imagen] Te permite ejecutar por primera vez una imagen. Podemos darle un nombre o el docker le dará uno random. 
# docker start [Nombre del contenedor] Arranca el contenedor indicado.
# docker stop [Nombre del contenedor] Detiene el contenedor indicado.
# docker build -t [nombre que queramos dar a la imagen] [Ruta] 
# La -t nos permite añadir un nombre a la imagen que vamos a crear. 
# Ejemplo para ejecutar una imagen docker run -p 80:80 -p 443:443 -it [nombre de la imagen]
# -p indica los puertos 
# -it Sirve para que se ejecute en el shell, mostrandose los procesos y teniendo acceso al servidor.


# docker rm [Nombre o ID] Borra el contenedor indicado.
# Añadiendo el flag --name [Nombre del contenedor] le damos nombre al contenedor. 
# docker attach te permite entrar en un contenedor que se encuentra ejecutandose.

# El siguiente ejemplo es una cadena de comando para ejecutar una imagen de Nginx en un contenedor
# sudo docker run --name docker-nginx -p 80:80 -d -v ~/docker-nginx/html:/usr/share/nginx/html nginx
# -p 80:80 = Exponer los puertos que vamos a utilziar, de entrada (Local-machine) y salida(Internal container)
# -d = Arrancar el servidor en el background. 
# -v Especifica que estamos linkeando un volumen
# La parte de la izquierda de los : es la localización en nuestro ordenador.
# LA parte de la derecha de los : es la localización de nuestro contenedor.

#
