#FROM 22011974/norway-docker-base
FROM python:3.8-buster

ADD requirements.txt /stage/requirements.txt
RUN pip3 install -r /stage/requirements.txt
