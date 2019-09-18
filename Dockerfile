FROM ubuntu:18.04

RUN \
 apt-get update && \
 apt-get install -y byobu \
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
   dnsutils

ADD home /root

RUN /usr/bin/byobu-launcher-install
#CMD ["/usr/bin/byobu -S work"]

#EXPOSE 22
#EXPOSE 1080
