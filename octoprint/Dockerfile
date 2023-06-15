FROM python:3.10-alpine

ENV VENV=/opt/octoprint
ENV PIP=$VENV/bin/pip

RUN apk add gcc musl-dev libffi-dev linux-rpi
COPY octoprint/opstart.sh /usr/local/bin/opstart.sh
RUN chmod +x /usr/local/bin/opstart.sh

RUN adduser -D octoprint

USER octoprint
WORKDIR /home/octoprint

EXPOSE 5000

CMD /usr/local/bin/opstart.sh
