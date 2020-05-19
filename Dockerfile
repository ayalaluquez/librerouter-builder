FROM debian:10.4-slim

RUN apt-get update \
&& apt-get install --no-install-recommends -y \
    build-essential \
    curl \
    file \
    gawk \
    gettext \
    git \
    libncurses5-dev \
    libssl-dev \
    python2.7 \
    python3 \
    rsync \
    subversion \
    sudo \
    swig \
    unzip \
    wget \
    zlib1g-dev \
&& rm -rf /var/lib/apt/lists/*

ENV HOME /home/build

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && useradd -c "OpenWrt Builder" -m -d $HOME -G sudo -s /bin/bash build \
    && mkdir $HOME/openwrt \
    && chown build:build $HOME/openwrt

USER build

WORKDIR $HOME/openwrt



