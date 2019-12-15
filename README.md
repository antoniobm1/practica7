# practica7
la url de la practica 7 es el siguiente
      https://github.com/antoniobm1/practica7.git
      
      
      
# Instalacion de MYSQL y de NGINX

En esta practica crearemos 4 maquinas:
      -2 Front-end que sera con el servidor web NGINX
      -1 back-end que sera con la base de datos de MYSQL y PHP
      -1 Balanceador con el servidor web NGINX

## Instalacion de MYSQL y PHP
Instalaremos el back-end igual que hicimos en la practica 3 mediante el script subido en este repositorio

## Configuramos el php-fpm
Es recomendable realizar un cambio en la directiva de configuración cgi.fix_pathinfo por cuestiones de seguridad. Editamos el siguiente archivo de configuración:
```
sudo nano /etc/php/7.2/fpm/php.ini
```
Buscamos la directiva de configuración cgi.fix_pathinfo que por defecto aparece comentada con un punto y coma y con un valor igual a 1 y lo cambiamos a 0.

## Cambiamos el achivo config.php
Añadimos la ip de nuestro back-end para enlazarlo

## Instalacion de NGINX
Instalamos NGINX con el script correspondiente de instalacion y sus paquetes

## Configurar Nginx para usar php-fpm
Editamos el archivo de configuración /etc/nginx/sites-available/default

## En nuestra maquina del balanceador
Lo instalamos como los otros nginx, sin editar el archivo config.php y sin cambiar el cgi.fix_pathinfo

## Creacion del archivo default
Esto lo hacemos para poner las ips de los frontales dentro del archivo y asi pueda enlazarse entre si y lo metemos dentro de la carpeta
```
/etc/nginx/sites-available
```

Ya estaria lista la practica


