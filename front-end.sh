#!/bin/bash
set +x
#actualizamos los repositorios
apt-get update

#Instalamos Nginx
apt-get install nginx -y

#Instalación de php-fpm y php-mysql
apt-get install php-fpm php-mysql -y

#Instalamos git
apt-get install git -y

#Instalamos la aplicación web
cd /var/www/html
rm -rf iaw-practica-lamp
git clone https://github.com/josejuansanchez/iaw-practica-lamp.git
chown www-data:www-data iaw-practica-lamp * -R

#Cambiamos el achivo config.php
cd ~
cd /var/www/html/iaw-practica-lamp/src
sed -i "s/localhost/3.93.60.84/" config.php

#Cambiamos cgi.fix_pathinfo
cd ~
cd /etc/php/7.2/fpm
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" php.ini
systemctl restart php7.2-fpm

# Editamos el archivo de configuración /etc/nginx/sites-available/default
cd /home/ubuntu
git clone https://github.com/antoniobm1/practica7
cp practica7/default /etc/nginx/sites-available/
systemctl restart nginx

#Comprobamos
cd /home/ubuntu
cp practica7/info.php /var/www/html/
