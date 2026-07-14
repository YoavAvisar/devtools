#!/bin/bash

base=$(basename $(pwd))

docker compose down

docker image rm drupal:latest postgres:latest

docker volume rm $(docker volume ls -q | grep $base)

echo "clean up successful"
