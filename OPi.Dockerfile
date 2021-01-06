FROM alpine as build
RUN apk add --no-cache git
RUN git clone -b axudp https://github.com/dm4tze/RPi-LoRa-KISS-TNC.git
RUN cd RPi-LoRa-KISS-TNC;git clone https://github.com/mayeranalytics/pySX127x.git
COPY ./content / 

FROM debian

#RUN apk add --no-cache python3-dev py3-pip build-base linux-headers; pip3 install spidev wheel setuptools OrangePi.GPIO

RUN apt-get update;apt-get install -y python3 python3-pip python3-dev; pip3 install wheel setuptools spidev OrangePi.GPIO

COPY --from=build /RPi-LoRa-KISS-TNC /

ENTRYPOINT  ["/usr/bin/python3", "-u", "/Start_lora-tnc.py"]
