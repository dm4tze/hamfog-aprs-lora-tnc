#!/bin/sh
docker build -t registry.hamfog.net/dm4tze/aprs-loratnc .
docker build -f OPi.Dockerfile -t registry.hamfog.net/dm4tze/aprs-loratnc:opi .