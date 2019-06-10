#!/usr/bin/env bash

docker-compose build

docker-compose up -d

sleep 5

docker-compose exec celery celery inspect ping -A app.celery_app
