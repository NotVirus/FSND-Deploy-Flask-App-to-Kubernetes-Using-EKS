FROM python:3.7.2-slim

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN apt-get update -y
RUN pip install flask
RUN pip install gunicorn
ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]
