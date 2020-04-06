Instalación de Docker:

https://www.digitalocean.com/community/tutorials/como-instalar-y-usar-docker-en-ubuntu-18-04-1-es

Indicaciones previas:
La primera parte muestra comandos básicos de docker, mientras que la segunda se centra en el desarrollo del proyecto ft_server.
Todo lo contenido entre corchetes se deberá poner sin los mismos.
Existen varias combinaciones para todos los comandos de ejecución, por lo que se pueden combinar.

Imágenes y contenedores:

docker search [nombre de la imagen] te permite buscar una imagen en el repositorio propio de docker.
docker pull [nombre de la imagen] te permite bajar la imagen indicada del repositorio de 
docker.
docker images lista todas las imágenes descargadas.
docker ps te permite ver los contenedores que se están ejecutando en este momento
docker ps -a te muestra todos los contenedores que tengas creados.
docker rm [ID] borra el contenedor indicado.
docker image rm [ID] borra la imagen indicada.

Creando contenedores:

docker run [nombre de la Imagen] Crea un contenedor con la imagen indicada.
docker run --name [nombre que queremos dar] [nombre de la Imagen] Permite dar un nombre a nuestro contenedor.
docker run -p 80:80 -p 443:443 -d [nombre la imagen]
-p 80:80 y -p 443:443 = Exponer los puertos que vamos a utilizar, de entrada (Local-machine) 
y salida (Internal container)
-d = Arrancar el servidor en el background.
La parte de la izquierda de los : es la localización en nuestro ordenador.
La parte de la derecha de los : es la localización de nuestro contenedor.

Otro ejemplo parecido:
docker run -p 80:80 -p 443:443 -it [nombre la imagen]

-it quiere decir interactivo, es decir, veremos en el shell una representación de los procesos que se están ejecutando, así como podremos acceder a su contenido.

Por último, para arrancar o detener contenedores:
docker start [ID o nombre del contenedor] Arranca el contenedor indicado.
docker stop [ID o nombre del contenedor] detiene el contenedor indicado.

Construyendo tus propias imágenes docker

Docker permite crear tu propia imagen docker a partir de un dockerfile. Una vez elaborado nuestro archivo seremos capaces de crear la imagen ejecutando lo siguiente:
docker build -t [nombre que queramos dar a la imagen] [Ruta donde se encuentre el dockerfile] 
-t Nos permite añadir un nombre a la imagen que vamos a crear.

Más Información: 
https://docs.docker.com/engine/reference/builder/






















El siguiente ejemplo es una cadena de comando para ejecutar una imagen de Nginx en un
 contenedor
docker run -p 80:80 -p 443:443 -d [nombre la imagen]
-p 80:80 y -p 443:443 = Exponer los puertos que vamos a utilizar, de entrada (Local-machine) 
y salida (Internal container)
-d = Arrancar el servidor en el background.
La parte de la izquierda de los : es la localización en nuestro ordenador.
La parte de la derecha de los : es la localización de nuestro contenedor.

-it quiere decir interactivo, es decir que veremos en el shell, una representación de los procesos que se están ejecutando, así como podremos acceder a su contenido.

PhPMyAdmin

Tenemos la carpeta que contiene todo el PhPMyAdmin en la carpeta src.
Tenemos el archivo de configuración obtenido de la propia carpeta PhPMyAdmin
con el nombre “config.sample.inc.php” pero renombrado como “config.inc.php” el 
cual modificamos e introducimos en la carpeta de PhPMyAdmin

Para acceder a la configuración de PhPMyAdmin: 
Usuario = root
Password = 


MySql
Tenemos el archivo config.sql para configurar la base de datos.

Wordpress
El archivo wp-config.php lo modificamos y lo metemos dentro de la carpeta 
Wordpress.

Para acceder al Wordpress Admin y poder así configurar nuestro Wordpress utilizaremos: 
Usuario = root
Password = 123456

wordpress.sql es el archivo de configuración de wordpress.





Certificado SSL

EL OpenSSL consiste en un robusto paquete de herramientas de administración y 
bibliotecas relacionadas con la criptografía.

Estas herramientas ayudan al sistema a implementar el Secure Sockets Layer 
(SSL), así como otros protocolos relacionados con la seguridad, como el Transport 
Layer Security (TLS). OpenSSL también permite crear certificados digitales que 
pueden aplicarse a un servidor, por ejemplo Apache.

En el siguiente enlace se explica cómo crear una clave ssl para tu servidor Nginx:
https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-
certificate-for-nginx-on-debian-10

El siguiente enlace detalla cada uno de los comandos utilizados (man) :
https://www.openssl.org/docs/man1.0.2/man1/openssl-req.html


openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-subj "/C=SP/ST=Spain/L=Madrid/O=42Madrid/CN=localhost" \
-keyout /etc/ssl/private/default.key \
-out /etc/ssl/certs/default.crt && \
openssl dhparam -out /etc/nginx/dhparam.pem 512

req = El comando req crea y procesa principalmente solicitudes de certificados en 
formato PKCS # 10. Además, puede crear certificados auto firmados para su uso 
como CA raíz,


-x509 =
