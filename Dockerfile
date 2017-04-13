FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y mono-complete mc libftdi1.2 usbutils tzdata

ENV TZ=Europe/Berlin
RUN echo $TZ | tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

VOLUME ["/opt/etiss"]

EXPOSE 8080

ENTRYPOINT ["/usr/bin/mono", "/opt/etiss/ETISS.VU.Host.exe"]
