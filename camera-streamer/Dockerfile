FROM debian:bullseye-slim

COPY raspberrypi-archive-stable.gpg /etc/apt/trusted.gpg.d
COPY raspi.list /etc/apt/sources.list.d

RUN apt update

ADD https://github.com/ayufan/camera-streamer/releases/download/v0.2.1/camera-streamer-raspi_0.2.1.bullseye_arm64.deb /tmp/camera-streamer-raspi.deb
RUN apt install --no-install-recommends -y /tmp/camera-streamer-raspi.deb && rm /tmp/camera-streamer-raspi.deb && apt clean

EXPOSE 8080

CMD camera-streamer --camera-type=libcamera
