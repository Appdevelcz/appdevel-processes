#!/usr/bin/env bash

docker-compose up -d nginx mysql phpmyadmin redis
docker-compose exec --user laradock workspace bash
