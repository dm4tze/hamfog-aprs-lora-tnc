#!/bin/sh
docker build -t registry.hamfog.net/dm4tze/aprs-lora-tnc .
docker build -f OPi.Dockerfile -t registry.hamfog.net/dm4tze/aprs-lora-tnc:opi .