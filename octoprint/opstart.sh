#!/bin/sh

VENV="venv"

# Setup virtual environment, if needed
if [ ! -d "$VENV" ]
then
  PIP="$VENV/bin/pip"
  python -mvenv $VENV
  $PIP install --upgrade pip
  $PIP install OctoPrint
fi

$VENV/bin/octoprint serve
