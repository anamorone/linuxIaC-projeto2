#! /bin/bash

echo "Atualizando e instalando o servidor: "

apt update
apt upgrade -y

echo "Instalando o Apache2: "

apt install apache2 -y
apt install unzip -y

echo "Baixando aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

echo "Copiando os arquivos no direório padrão do apache..."

cd linux-site-dio-main
rm /var/www/html/index.html
cp * -R /var/www/html

