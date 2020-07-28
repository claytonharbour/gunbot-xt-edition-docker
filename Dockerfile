FROM ubuntu:latest

RUN apt-get update && apt-get install -y unzip wget && apt-get clean

ARG GUNBOT_VERSION=18.8.8
ENV GUNBOT_VERSION $GUNBOT_VERSION

RUN mkdir -p /app
WORKDIR /app

COPY install.sh .

RUN ./install.sh

COPY patch/gunthy-linux-19.3.3 gunthy-linux-19.3.3

WORKDIR /app/gunbot

VOLUME /app/gunbot/

CMD ./gunthy-linux-19.3.3

EXPOSE 5000
