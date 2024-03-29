#!/bin/bash

# if [ -d "env" ]; then
#     echo "********Python venv exists!********"
# else
#     python3 -m venv venv
# fi

# echo "**********$PWD**********"
# source venv/bin/activate

# pip3 install -r requirements.txt

if [ -d "logs" ]; then
    echo "********Log Folders exist!********"
    echo "********$DB_PORT**********"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "********Log setup finishes********"