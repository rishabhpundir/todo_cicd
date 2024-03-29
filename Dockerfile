FROM python:3.9.7-slim
ENV PYTHONBUFFERED=1
COPY . /todo
WORKDIR /todo
RUN pip install -r requirements.txt && chmod +x entrypoint.sh
CMD ["/todo/entrypoint.sh"]