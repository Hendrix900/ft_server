# La imagen queremos que cargue.
FROM debian:buster

# Autor del dockerfile.
MAINTAINER Carlos Castillo <ccastill>

# Versión de mi Dockerfile.
LABEL Version = "1.0"

# Aquellas acciones que queremos que se ejecuten
# Actualizar
RUN apt-get update
RUN apt-get install -y nginx

EXPOSE 8080

#------Comandos----
# docker ps Te permite ver los contenedores que se están ejecutando.
# docker ps -a Te muestra todos los contenedores que tengas.
# docker run [Imagen] Te permite ejecutar por primera vez una imagen. Podemos darle un nombre o el docker le dará uno random. 
# docker start [Nombre del contenedor] Arranca el contenedor indicado.
# docker stop [Nombre del contenedor] Detiene el contenedor indicado.

# docker rm [Nombre o ID] Borra el contenedor indicado.
#       Borra la imagen indicada.
# docker images te lista todas las imagenes descargadas.
# docker run --name [Nombre del contenedor] le damos nombre al contenedor. 
# Ctrl + q + p =  SAlir de un contenedor sin detenerlo.
# docker attach te permite entrar en un contenedor que se encuentra ejecutandose.