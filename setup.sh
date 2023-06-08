#!/bin/bash

if [[ -e /etc/default/raspberrypi-kernel ]]
then
  cd camera-streamer
  cp /etc/apt/trusted.gpg.d/raspberrypi-archive-stable.gpg .
  cp /etc/apt/sources.list.d/raspi.list .
fi
