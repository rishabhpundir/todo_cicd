FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

EXPOSE 8000

RUN python manage.py collectstatic --noinput

RUN python manage.py makemigrations --noinput

RUN python manage.py migrate

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "todo_cicd.wsgi:application"]
