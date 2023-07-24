FROM python:3.10-alpine

# Prerequisites
RUN apk add gcc g++ musl-dev libffi-dev linux-rpi ffmpeg

# Copy OctoPrint start script
COPY opstart.sh /usr/local/bin/opstart.sh
RUN chmod +x /usr/local/bin/opstart.sh

# Setup OctoPrint user
RUN adduser -D octoprint
RUN adduser octoprint dialout

USER octoprint
WORKDIR /home/octoprint

EXPOSE 5000

CMD /usr/local/bin/opstart.sh
