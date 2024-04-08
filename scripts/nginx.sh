#!/bin/bash

# sudo cp -rf app.conf /etc/nginx/sites-available/app

# chmod 710 /var/lib/jenkins/workspace/DjangoTest/

# sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/

cd /var/lib/jenkins/workspace/TodoCICDPipeline

sudo nginx -t

echo "********Nginx!********"

sudo systemctl restart nginx

sudo systemctl status nginx

echo "********Nginx has been restarted!********"