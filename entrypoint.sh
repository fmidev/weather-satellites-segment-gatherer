#!/usr/bin/bash

_term() {
  echo "Entrypoint caught SIGTERM signal"
  kill -TERM "$child" 2>/dev/null
  echo "Waiting for child process to exit"
  wait "$child"
}

trap _term SIGTERM

source /opt/conda/.bashrc
source /config/env-variables

micromamba activate
if [ -e /config/segment_gatherer.yaml ]; then
    /opt/conda/bin/segment_gatherer.py -v -c /config/segment_gatherer.yaml &
    child=$!
else
    /opt/conda/bin/segment_gatherer.py -v -c /config/segment_gatherer.conf -C default &
    child=$!
fi

wait "$child"
