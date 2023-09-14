FROM debian:bullseye-slim

COPY raspberrypi-archive-stable.gpg /etc/apt/trusted.gpg.d
COPY raspi.list /etc/apt/sources.list.d

ARG CSVER="0.2.6"
ADD https://github.com/ayufan/camera-streamer/releases/download/v${CSVER}/camera-streamer-raspi_${CSVER}.bullseye_arm64.deb /tmp/camera-streamer-raspi.deb

ARG APT_INSTALL="apt install --no-install-recommends -y"
RUN apt update && \
  $APT_INSTALL /tmp/camera-streamer-raspi.deb && \
  rm -fr /tmp/*.deb /var/lib/apt/lists/*

EXPOSE 8080

ENTRYPOINT ["camera-streamer"]
