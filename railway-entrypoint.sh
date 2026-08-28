#!/bin/sh
# Map Railway env vars onto Owncast CLI flags.
# PORT is injected by Railway for the HTTP domain; RTMP ingest stays on 1935 (TCP proxy).
set -e

export GOMAXPROCS=8

exec /app/owncast \
  -webserverport "${PORT:-8080}" \
  -rtmpport "${RTMP_PORT:-1935}" \
  ${ADMIN_PASSWORD:+-adminpassword "$ADMIN_PASSWORD"} \
  ${STREAM_KEY:+-streamkey "$STREAM_KEY"}
