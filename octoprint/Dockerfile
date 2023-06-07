# FROM python:3.10-slim
# 
# RUN apt update && apt install -y gcc && pip install OctoPrint && mkdir -p /var/www && chown -R www-data:www-data /var/www

FROM python:3.10-alpine

RUN apk add gcc musl-dev libffi-dev
RUN adduser -D octoprint

USER octoprint
WORKDIR /home/octoprint

RUN pip install --user OctoPrint

EXPOSE 5000

CMD /home/octoprint/.local/bin/octoprint serve
