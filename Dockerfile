# Use an official Python runtime as a parent image
FROM python:3.9-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-client \
    build-essential \
    libpq-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN python -m venv /venv && /venv/bin/pip install --upgrade pip && /venv/bin/pip install --no-cache-dir -r /app/requirements.txt

ENV PATH="/scripts:/venv/bin:$PATH"

COPY . /app/

EXPOSE 80

CMD ["./scripts/entrypoint.sh"]
