#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app
chmod 710 /var/lib/jenkins/workspace/DjangoTest/

sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "********Nginx has been started!********"

sudo systemctl restart nginx
sudo systemctl status nginx

echo "********Nginx has been restarted!********"