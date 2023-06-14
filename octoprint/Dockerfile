FROM python:3.10-alpine

RUN apk add gcc musl-dev libffi-dev linux-rpi
RUN adduser -D octoprint

USER octoprint
WORKDIR /home/octoprint

RUN pip install --user OctoPrint

EXPOSE 5000

CMD /home/octoprint/.local/bin/octoprint serve
