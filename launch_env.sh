#!/usr/bin/env bash

# Copy .env.example to .env
cp .env.example .env

# Create composer env
docker run --rm -v $(pwd):/app composer install

# Launch docker-compose
docker-compose up -d

# Set the application key
docker-compose exec app php artisan key:generate
