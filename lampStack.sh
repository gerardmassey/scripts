#!/bin/bash

# Script to get a barebones LAMP stack with certbot

apt-get update
apt-get upgrade -y
apt-get install -y apache2
apt-get install -y mysql-server
apt-get install -y php
apt-get install -y phpmyadmin
mysql_secure_installation
add-apt-repository ppa:certbot/certbot
apt-get install -y python-certbot-apache
