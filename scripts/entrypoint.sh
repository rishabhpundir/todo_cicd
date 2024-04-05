#!/bin/bash

echo "*************Applying database migrations*************"
python manage.py collectstatic --noinput
python manage.py migrate --noinput
echo "--------$DB_HOST------$POSTGRES_DB"
echo "*************Starting the server*************"
gunicorn --bind 0.0.0.0:8000 todo_cicd.wsgi:application
