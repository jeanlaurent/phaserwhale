#!/bin/sh
set -e
docker build -t jeanlaurent/phaserwhale .
docker run -d -p 80:8080 -v $(pwd)/static:/usr/share/nginx/html jeanlaurent/phaserwhale