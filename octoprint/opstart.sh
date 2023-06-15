#!/bin/sh

VENV="venv"
BIN="$VENV/bin"

# Setup virtual environment, if needed
if [ ! -d "$VENV" ]
then
  PIP="$BIN/pip"
  python -mvenv $VENV
  $PIP install --upgrade pip
  $PIP install OctoPrint
fi

# Start OctoPrint server
$BIN/octoprint serve
