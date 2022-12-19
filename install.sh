#! /bin/bash
sudo docker network create saleor-backend-tier --attachable
docker-compose build
docker-compose run --rm api python3 manage.py migrate
docker-compose run --rm api python3 manage.py collectstatic --noinput
docker-compose run --rm api python3 manage.py populatedb --createsuperuser