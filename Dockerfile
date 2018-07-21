FROM debian:stretch
RUN echo "deb-src http://deb.debian.org/debian stretch main" >> /etc/apt/sources.list
RUN apt-get update -q
RUN apt-get build-dep -y st
