FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y gnupg2 && \
    apt-get install -y wget && \
    apt-get install -y unzip && \
    wget https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_linux_amd64.zip && \
    unzip ./terraform_0.12.7_linux_amd64.zip -d /usr/local/bin/ && \
    apt install -y docker.io && \
    apt-get -y install python3 && \
    apt install -y python3-pip && \
    pip3 install awscli --upgrade && \
    mkdir /build && \
    mkdir /build/iac && \
    mkdir /build/app

ARG DOMAIN

ENV DOMAIN $DOMAIN

COPY . /build/iac

WORKDIR /build/iac

RUN chmod +x destroy.sh

CMD ./destroy.sh