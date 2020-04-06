ft_server (EN)
--
We will create a Nginx server inside a docker container with PhPMyAdmin, Wordpress and MySQL running.

**INSTRUCTIONS**:

1) We will install docker

2) We will download this repository

3) We will create an image from the dockerfile:

  `docker build -t [name we want to give the image] [path where the dockerfile is]`

4) We will run the image:

  `docker run -p 80:80 -p 443: 443 -it [name the image]`

5) To access we introduce localhost in the address bar

**MORE INFORMATION**:

[Documentation](/Documentation)

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

**MÁS INFORMACIÓN**:

[Documentation](/Documentation)



