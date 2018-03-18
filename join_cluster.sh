#!/bin/bash

set -x

docker-compose exec rabbit_2 rabbitmqctl stop_app
docker-compose exec rabbit_2 rabbitmqctl reset
docker-compose exec rabbit_2 rabbitmqctl join_cluster rabbit@rabbit_1
docker-compose exec rabbit_2 rabbitmqctl start_app

docker-compose exec rabbit_3 rabbitmqctl stop_app
docker-compose exec rabbit_3 rabbitmqctl reset
docker-compose exec rabbit_3 rabbitmqctl join_cluster rabbit@rabbit_1
docker-compose exec rabbit_3 rabbitmqctl start_app
