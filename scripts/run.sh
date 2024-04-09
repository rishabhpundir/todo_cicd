#!/bin/sh
set -e

python manage.py collectstatic --noinput
python manage.py migrate
gunicorn -b :8000 --chdir /app todo_cicd.wsgi:application