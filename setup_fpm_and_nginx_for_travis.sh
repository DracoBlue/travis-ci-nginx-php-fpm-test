#!/bin/bash
sudo apt-get install nginx php5-fpm

cat /etc/nginx/nginx.conf
ls /etc/nginx

sudo cp .travis_nginx.conf /etc/nginx/nginx.conf
sudo sed -i '' "s/%%HOME_DIRECTORY/`pwd`/" /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
