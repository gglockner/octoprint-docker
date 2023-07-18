FROM debian:bullseye-slim

COPY raspberrypi-archive-stable.gpg /etc/apt/trusted.gpg.d
COPY raspi.list /etc/apt/sources.list.d

RUN apt update

ARG VER=0.2.4
ARG APT_INSTALL="apt install --no-install-recommends -y"

ADD https://github.com/ayufan/camera-streamer/releases/download/v$VER/camera-streamer-raspi_$VER.bullseye_arm64.deb /tmp/camera-streamer-raspi.deb
RUN $APT_INSTALL libcamera0
RUN $APT_INSTALL /tmp/camera-streamer-raspi.deb && rm /tmp/camera-streamer-raspi.deb && apt clean

EXPOSE 8080

ENTRYPOINT ["camera-streamer"]
