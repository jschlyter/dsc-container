FROM debian:13-slim

RUN apt-get -y update && apt-get -y install curl gpg

RUN echo 'deb http://download.opensuse.org/repositories/network:/dns-oarc/Debian_13/ /' > /etc/apt/sources.list.d/network:dns-oarc.list
RUN curl -fsSL https://download.opensuse.org/repositories/network:dns-oarc/Debian_13/Release.key | gpg --dearmor > /etc/apt/trusted.gpg.d/network_dns-oarc.gpg
RUN apt-get -y update && apt-get -y install dsc dsc-datatool
