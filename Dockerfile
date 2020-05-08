FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Amsterdam
ENV SHELL=/bin/bash
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN \
  apt-get update --fix-missing && \
  apt-get install -y --no-install-recommends byobu \
  ca-certificates \
  build-essential \
  locales \
  apt-utils \
  telnet \
  curl \
  vim \
  bash-completion \
  git \
  net-tools \
  corkscrew \
  openssh-server \
  toilet \
  cowsay \
  figlet \
  sshpass \
  jq \
  inetutils-ping \
  dnsutils \
  && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

RUN touch /etc/locale.gen && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

USER root

RUN /usr/bin/byobu-launcher-install
