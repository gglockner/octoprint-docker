FROM python:3.10-alpine

ENV VENV=/opt/octoprint
ENV PIP=$VENV/bin/pip

RUN apk add gcc musl-dev libffi-dev linux-rpi
RUN python -mvenv $VENV
RUN $PIP install --upgrade pip
RUN $PIP install OctoPrint

RUN adduser -D octoprint
RUN chown -R octoprint:octoprint $VENV

USER octoprint
WORKDIR /home/octoprint

EXPOSE 5000

CMD $VENV/bin/octoprint serve
