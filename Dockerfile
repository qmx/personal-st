FROM debian:stable
RUN echo "deb-src http://deb.debian.org/debian stable main" >> /etc/apt/sources.list
RUN apt-get update -q
RUN apt-get build-dep -y st
