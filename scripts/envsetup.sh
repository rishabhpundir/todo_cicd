#!/bin/bash

if [ -d "logs" ]; then
    echo "********Log Folders exist!********"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
sudo chmod +x entrypoint.sh
echo "********Log setup finishes********"