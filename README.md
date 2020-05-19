# librerouter-builder

Contains the LibrerRouter Image Builder based on a debian 10.4 container with required packages preinstalled.

Example
docker run --rm -v "$(pwd)"/bin/:/home/build/openwrt/bin -it tetrix/librerouter:latest
