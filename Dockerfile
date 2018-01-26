FROM amazonlinux:latest
MAINTAINER Matt Healy <healmatt@gmail.com>

# Install system packages
RUN yum update -y
RUN yum install python36 python36-devel python36-pip procps mysql-devel -y

# Setup flask application
RUN mkdir -p /deploy/app
COPY requirements-common.txt /deploy/app/requirements.txt
RUN /usr/bin/pip-3.6 install --upgrade pip
RUN /usr/bin/pip-3.6 install -r /deploy/app/requirements.txt

RUN echo 'alias ll="ls -la"' >> ~/.bashrc

WORKDIR /deploy/app
