FROM node:6

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" >> /etc/apt/sources.list

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y wine
RUN apt-get clean
