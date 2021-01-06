# Dockerized RPi-LoRa-KISS-TNC

From this Dockerfile you can create an Image with RPi-LoRa-KISS-TNC installed on Alpine Linux.

## Build

To build this image you can use the `build.sh`. It will create an Image tagged with `registry.hamfog.net/dm4tze/aprs-loratnc`.

## Start

To Start the tnc can use the run.sh. Configuration can be injected by mounting a `config.py` to the root folder. For an example see [config.py](content/RPi-LoRa-KISS-TNC/config.py)
