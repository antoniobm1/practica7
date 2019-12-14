#!/bin/bash
set -x
#actualizamos repositorios
apt-get update

# instalamos nginx
apt-get install nginx -y

#instalacion de php-fpm y php-mysql
apt-get install php-fpm php-mysql -y

#instalamos git
apt-get install git -y

#clonamos nuestro archivo de nuestro repositorio
cd /home/ubuntu
git clone https://github.com/antoniobm1/practica7.git

#borramos el archivo default para copiar el nuevo
cd /etc/nginx/sites-enabled/
rm -r default

#Copiamos el archivo descargado en la carpeta de nginx
cp /home/ubuntu/practica7/default /etc/nginx/sites-enabled/

#reiniciamos el servicio
systemctl restart nginx
