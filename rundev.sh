docker run --device /dev/i2c-1 --device /dev/spidev0.0 --device /dev/gpiomem -v /sys:/sys -v `pwd`/devel:/devel -p 10001:10001 --rm --entrypoint /bin/bash -it dm4tze/loratnc
