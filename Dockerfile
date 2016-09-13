FROM armv7/armhf-ubuntu:16.04

RUN apt-get update

RUN apt-get install -y mono-complete mc libftdi1.2 usbutils

ADD ./etiss /opt/etiss

VOLUME ["/opt/etiss"]

RUN ln -s /usr/lib/arm-linux-gnueabihf/libftdi1.so.2.2.0 /usr/lib/arm-linux-gnueabihf/libftdi1.so
RUN ln -s /lib/arm-linux-gnueabihf/libusb-1.0.so.0.1.0 /lib/arm-linux-gnueabihf/libusb-1.0.so

EXPOSE 8080

ENTRYPOINT ["/usr/bin/mono", "/opt/etiss/ETISS.VU.Host.exe"]
