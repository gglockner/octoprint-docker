FROM python:3.10-alpine as compiler
ENV PYTHONUNBUFFERED 1

ENV VENV=/opt/octoprint
ENV PIP=$VENV/bin/pip

RUN apk add gcc musl-dev libffi-dev linux-rpi
RUN python -mvenv $VENV
RUN $PIP install --upgrade pip
RUN $PIP install OctoPrint

FROM python:3.10-alpine as runner

RUN adduser -D octoprint

COPY --from=compiler /opt/octoprint /opt/octoprint
RUN chown -R octoprint:octoprint /opt/octoprint

USER octoprint
WORKDIR /home/octoprint

EXPOSE 5000

CMD $VENV/bin/octoprint serve
