#!/bin/bash

# Copy Raspberry Pi keys to build the camera streamer container
if [[ -e /etc/default/raspberrypi-kernel ]]
then
  cd camera-streamer
  cp /etc/apt/trusted.gpg.d/raspberrypi-archive-stable.gpg .
  cp /etc/apt/sources.list.d/raspi.list .
fi
