ft_server (EN)
--


ft_server (ES)
--
ft_server nos permitirá crear un servidor Nginx dentro de un contenedor docker donde se estarán ejecutando PhPMyAdmin, Wordpress y MySQL.

**INSTRUCCIONES**:

1) Instalaremos docker

2) Descargaremos este repositorio

3) Crearemos una imagen a partir del dockerfile:

   `docker build -t [nombre que queramos dar a la imagen] [ruta donde se encuentre el dockerfile]`

4) Ejecutaremos la imagen:

   `docker run -p 80:80 -p 443:443 -it [nombre la imagen]`

5) Para acceder introducimos localhost en la barra de direcciones


Más información:1




