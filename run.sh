#!/bin/sh

set -xe

docker run -d \
  --name=transmission \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e TRANSMISSION_WEB_HOME=/transmissionic/ `#optional` \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v /nfs/config:/config \
  -v /nfs/:/downloads \
  -v /nfs/watch/:/watch \
  --restart unless-stopped \
  daemonoid/transmission-docker:latest
