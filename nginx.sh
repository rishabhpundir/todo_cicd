#!/bin/bash

sudo nginx -t

echo "********Nginx has been started!********"

sudo systemctl restart nginx
sudo systemctl status nginx

echo "********Nginx has been restarted!********"