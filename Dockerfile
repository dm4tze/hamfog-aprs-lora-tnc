FROM alpine as build
RUN apk add --no-cache git
RUN git clone -b axudp https://github.com/dm4tze/RPi-LoRa-KISS-TNC.git
RUN cd RPi-LoRa-KISS-TNC;git clone https://github.com/mayeranalytics/pySX127x.git
COPY ./content / 

FROM alpine

RUN apk add --no-cache python3-dev py3-pip build-base linux-headers linux-rpi-dev; pip3 install spidev RPi.GPIO

COPY --from=build /RPi-LoRa-KISS-TNC /

ENTRYPOINT  ["/usr/bin/python3", "-u", "/Start_lora-tnc.py"] 
