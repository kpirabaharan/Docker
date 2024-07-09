#!/bin/bash

docker run -it --rm --name postgres-1 \
--net postgres \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=postgres \
-e POSTGRES_DB=db \
-e PGDATA="/data" \
-v ${PWD}/data:/data \
-v ${PWD}/config:/config \
-v ${PWD}/archive:/mnt/server/archive \
-p 5432:5432 \
-d \
postgres:15.0 -c 'config_file=/config/postgresql.conf'
