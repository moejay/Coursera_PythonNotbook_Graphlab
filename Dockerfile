FROM ubuntu:14.04

MAINTAINER m0ejay <ali.jajeh@gmail.com>

RUN apt-get update
RUN apt-get install -y  python-pip python-dev build-essential libpng-dev  libfreetype6-dev freetype* pkg-config
RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv

RUN pip install ipython
RUN pip install --upgrade --no-cache-dir https://get.dato.com/GraphLab-Create/1.7.1/{EMAIL}/{LICENCE}/GraphLab-Create-License.tar.gz

RUN pip install matplotlib
RUN pip install -U sframe
RUN pip install jupyter


VOLUME /notebooks
WORKDIR /notebooks
ADD ./start.sh /start.sh


EXPOSE 8888


ENTRYPOINT sh /start.sh


