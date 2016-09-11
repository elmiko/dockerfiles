#!/bin/sh

GIT_PORT=${GIT_DAEMON_PORT:-9418}

git daemon \
    --base-path=/opt/git \
    --export-all \
    --listen=0.0.0.0 \
    --port=${GIT_PORT} \
    --verbose \
    --reuseaddr \
    --enable=upload-pack \
    --enable=upload-archive \
    --enable=receive-pack
