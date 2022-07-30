#!/bin/bash

echo "Atualizando o servidor!"
dnf install update
dnf install upgrade -y
dnf install httpd -y
dnf install unzip -y

echo" Baixando e copiando arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

